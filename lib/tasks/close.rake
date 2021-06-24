# frozen_string_literal: true

require 'close_api'
require 'customer_api'

require 'json'
require 'csv'

namespace :close do
  @close_api = CloseApi.new
  @customer_api = CustomerApi.new

  desc 'syncs the segments from customer.io to close.com'
  task :segment_sync, [:number] => :environment do |_t, _args|
    # update close contacts
    def update_close_contacts(close_contacts, customer_contacts, customer_segment)
      customer_contacts.each do |customer_contact|
        customer_email = customer_contact['attributes']['email']
        customer_created_at = Time.at(
          customer_contact['timestamps']['cio_id']
        ).strftime('%m/%d/%Y')

        close_contact = @close_api.find_contact(close_contacts, customer_email)

        next unless close_contact

        ### CUSTOM FIELDS
        # Customer.Io Segment - custom.cf_Rp7Z0tH5Jt2CeVU3uv1q02cRHfoIAl1ub8rDR9AiYHW
        # Needs Nurturing - custom.cf_N5Hnzwt4EMcuwGVZkBZuomSVBAMpo07Hzert2hG8QD1
        # Nurture Start Date - custom.cf_xhT1KuDwk1IzhNbtzkKoY9VocISAA29QqPkfmffJPFY

        # we only want to sync if the new segment is of a higher rank
        rank = @customer_api.segment_rank(customer_segment[:number], close_contact['custom.cf_Rp7Z0tH5Jt2CeVU3uv1q02cRHfoIAl1ub8rDR9AiYHW'])

        # we don't want to update anything unless the rank has gone up
        next unless rank == 'superior'

        lead = @close_api.find_lead(close_contact['lead_id'])
        lead_status = lead['status_label']

        if customer_segment[:add_task] && lead_status != 'Bad Fit'
          msg_slack "#{customer_segment[:task_message]} #{close_contact['display_name']} (#{close_contact['title']}) [#{lead_status}]"

          task_payload = {
            "_type": 'lead',
            "lead_id": close_contact['lead_id'],
            "assigned_to": 'user_iGM2Ik3TrAjWvGy01ET3vNkdd6nRyTFEw0Qi873OTkf',
            "text": "#{customer_segment[:task_message]} #{close_contact['display_name']} (#{close_contact['title']}) [#{lead_status}]",
            "date": (Date.today).strftime('%F'),
            "is_complete": false
          }

          @close_api.create_task(task_payload)
        end

        contact_payload = {
          'custom.cf_Rp7Z0tH5Jt2CeVU3uv1q02cRHfoIAl1ub8rDR9AiYHW': customer_segment[:name],
          'custom.cf_N5Hnzwt4EMcuwGVZkBZuomSVBAMpo07Hzert2hG8QD1': customer_segment[:needs_nurturing],
          'custom.cf_xhT1KuDwk1IzhNbtzkKoY9VocISAA29QqPkfmffJPFY': customer_created_at
        }

        response = @close_api.update_contact(close_contact['id'], contact_payload)

        puts close_contact, customer_created_at, response, '------'

      end
    end

    msg_slack 'preparing to sync customer.io segments to close.com'

    @customer_api.segments.each do |segment|
      customer_contacts = @customer_api.get_segment(segment[:number])
      close_contacts = @close_api.all_contacts
      update_close_contacts(close_contacts, customer_contacts, segment)
    end
  end

  desc 'back fill nurture dates from customer.io to close.com'
  task :backfill_dates, [:number] => :environment do
    @customer_api.segments.each do |segment|
      customer_contacts = @customer_api.get_segment(segment[:number])
      close_contacts = @close_api.all_contacts

      customer_contacts.each do |customer_contact|
        customer_email = customer_contact['attributes']['email']

        # we need to convert time from unix to regular
        customer_created_at = Time.at(
          customer_contact['timestamps']['cio_id']
        ).strftime('%m/%d/%Y')

        close_contact = @close_api.find_contact(close_contacts, customer_email)

        next unless close_contact

        ### CUSTOM FIELDS
        # Nurture Start Date - custom.cf_xhT1KuDwk1IzhNbtzkKoY9VocISAA29QqPkfmffJPFY

        contact_payload = {
          'custom.cf_xhT1KuDwk1IzhNbtzkKoY9VocISAA29QqPkfmffJPFY': customer_created_at
        }

        response = @close_api.update_contact(close_contact['id'], contact_payload)

        puts close_contact, customer_created_at, response, '------'
      end
    end
  end

  desc 'forward incomplete tasks for leads without opportunities'
  task :forward_tasks, [:number] => :environment do
    tasks = @close_api.all_tasks
    tasks.each do |task|
      next if task['is_complete'] == true

      text = task['text']
      due_date = DateTime.parse(task['due_date'])
      task_id = task['id']

      # if the date is today or past due
      next unless due_date <= Date.today && (text.include?('Sub-Qualified') || text.include?('Potential'))

      payload = {
        "date": (Date.today + 30).strftime('%F')
      }

      @close_api.update_task(task_id, payload)
    end
  end

  desc 'nurture un-nurtured close.com contacts in customer.io'
  task :nurture, [:number] => :environment do |_t, _args|
    msg_slack 'preparing to nurture close.com contacts in customer.io'
    close_contacts = @close_api.search('nurture.json')

    $customerio = Customerio::Client.new(ENV['CUSTOMER_IO_SITE_ID'], ENV['CUSTOMER_IO_KEY'])

    close_contacts.each do |contact|
      email = contact['emails'].reject { |c| c['email'].nil? }[0]
      if email.nil?
        msg_slack "#{contact['name']} from doesn't have an email but needs nurturing! Please fix."
        next
      else
        lead = @close_api.find_lead(contact['lead_id'])

        # assigning email to a new variable to keep things simple
        the_email = email['email']
        first_name = contact['name'].split(' ')[0]
        last_name = contact['name'].split(' ')[1]
        title = contact['title']
        company = lead.parsed_response['display_name']
        url = lead.parsed_response['url']

        puts the_email, first_name, last_name, title, company, url
        puts '----'

        $customerio.identify(
          id: the_email,
          email: the_email,
          created_at: (Date.today).strftime('%F'),
          last_name: last_name,
          first_name: first_name,
          title: title,
          company: company,
          url: url,
          source: 'close.com'
        )

        $customerio.track(the_email, 'begin nurture')
      end
    end
  end

  desc 'export close.com audience for linkedin'
  task :export, [:number] => :environment do |_t, _args|
    msg_slack 'preparing to export close.com for linkedin'
    close_contacts = @close_api.search('export.json')

    export_folder = "#{Dir.pwd}/linkedin_exports/"
    timestamp = Time.now.to_i
    headers = %w[email firstname lastname jobtitle employeecompany]

    CSV.open("#{export_folder}/#{timestamp}.csv", 'w') do |csv|
      csv << headers
      close_contacts.each do |contact|
        email = contact['emails'].reject { |c| c['email'].nil? }[0]
        if email.nil?
          msg_slack "#{contact['name']} from doesn't have an email but needs its for ads! Please fix."
          next
        else
          lead = @close_api.find_lead(contact['lead_id'])

          # assigning email to a new variable to keep things simple
          the_email = email['email']
          first_name = contact['name'].split(' ')[0]
          last_name = contact['name'].split(' ')[1]
          title = contact['title']
          company = lead.parsed_response['display_name']
          csv << [the_email, first_name, last_name, title, company]
        end
      end
    end
  end

  desc 'move opp to retry if seq is completed'
  task :retry_ops, [:number] => :environment do
    # 1. get a list of all sequences
    sequences = @close_api.all_sequence

    # 2. run a sequence loop
    sequences.each do |sequence|
      #next unless sequence['status'] == 'active'

      subscriptions = @close_api.all_sequence_subscriptions(sequence['id'])

      subscriptions.each do |subscription|

        # 3. go through all the finished and paused subscriptions
        next unless subscription['status'].in? %w[finished paused]

        # 4. fetch the associated contact
        contact = @close_api.find_contact_by_id(subscription['contact_id'])

        # 5. check if the contact is on the do not sequence list
        next if contact['custom.cf_iuK23d7LKjVFuR9z52ddWRHEjCkkHZ23xCRzLvGIP83'] == 'Yes'

        lead = @close_api.find_lead(contact['lead_id'])


        puts lead, '****'
      end
      puts sequence['name'], subscriptions.count, '----'
    end

    # 3. get a list of contacts that have completed the sequence and DO NOT HAVE the don't sequence field
    # 4. check that stage isn't demo or prop sent
    # 5. check that the op status isn't won
    # 6. set the contact status do don't sequence
    # 7. move the opportunity to retry stage
  end

  def msg_slack(msg)
    HTTParty.post(WEBHOOK_URL.to_s, body: { text: msg }.to_json)
  end
end
