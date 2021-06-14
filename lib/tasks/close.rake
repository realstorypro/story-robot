# frozen_string_literal: true

# require 'uri'
# require 'net/http'
# require 'openssl'

namespace :close do
  @customer_io_auth = { "Authorization": "Bearer #{ENV['CUSTOMER_IO_API_KEY']}" }
  @close_api_base = "https://#{ENV['CLOSE_API_KEY']}:@api.close.com/api/v1/"
  @segments = [
    { number: 6,
      name: 'Unsubscribed',
      trumps: true,
      needs_nurturing: 'No',
      add_task: false,
      task_message: ''},
    { number: 7,
      name: 'Active Subscribers',
      trumps: false,
      needs_nurturing: 'No',
      add_task: false,
      task_message: '' },
    { number: 12,
      name: 'One Email Open',
      trumps: false,
      needs_nurturing: 'No',
      add_task: false,
      task_message: '' },
    { number: 8,
      name: 'Two Email Opens',
      trumps: false,
      needs_nurturing: 'No',
      add_task: false,
      task_message: 'Two emails opened, consider starting a sequence for' },
    { number: 10,
      name: 'Link Clicked',
      trumps: false,
      needs_nurturing: 'No',
      add_task: true,
      task_message: 'Link clicked, consider starting a sequence for' }
  ]

  desc 'syncs the segments from customer.io to close.com'
  task :segment_sync, [:number] => :environment do |_t, _args|
    msg_slack 'preparing to sync customer.io segments to close.com'

    @segments.each do |segment|
      customer_contacts = get_customer_segment(segment[:number])
      close_contacts = get_close_contacts
      update_close_contacts(close_contacts, customer_contacts, segment)
    end
  end

  # update close contacts
  def update_close_contacts(contacts, customers, segment)

    contacts.each do |contact|
      contact['emails'].each do |email|
        email_address = email['email']

        found_match = false

        customers.each do |customer|
          next unless customer['attributes']['email'].include? email_address

          found_match = true
        end

        next unless found_match

        ### CUSTOM FIELDS
        # Customer.Io Segment - custom.cf_Rp7Z0tH5Jt2CeVU3uv1q02cRHfoIAl1ub8rDR9AiYHW
        # Needs Nurturing - custom.cf_N5Hnzwt4EMcuwGVZkBZuomSVBAMpo07Hzert2hG8QD1

        # we only want to sync if the new segment is of a higher rank
        rank = segment_rank(segment[:number], contact['custom.cf_Rp7Z0tH5Jt2CeVU3uv1q02cRHfoIAl1ub8rDR9AiYHW'])

        # we don't want to update anything unless the rank has gone up
        next unless rank == 'superior'

        lead = get_close_lead(contact['lead_id'])
        lead_status = lead['status_label']

        if segment[:add_task] && lead_status != 'Bad Fit'
          msg_slack "#{segment[:task_message]} #{contact['display_name']} (#{lead_status})"

          task_payload = {
            "_type": 'lead',
            "lead_id": contact['lead_id'],
            "assigned_to": 'user_iGM2Ik3TrAjWvGy01ET3vNkdd6nRyTFEw0Qi873OTkf',
            "text": "#{segment[:task_message]} #{contact['display_name']} (#{lead_status})",
            "date": (Date.today).strftime('%F'),
            "is_complete": false
          }

          task_create_rsp = HTTParty.post(URI("#{@close_api_base}task/"),
                                          {
                                            headers: { 'Content-Type' => 'application/json' },
                                            body: task_payload.to_json
                                          })
        end

        contact_payload = {
          'custom.cf_Rp7Z0tH5Jt2CeVU3uv1q02cRHfoIAl1ub8rDR9AiYHW': segment[:name],
          'custom.cf_N5Hnzwt4EMcuwGVZkBZuomSVBAMpo07Hzert2hG8QD1': segment[:needs_nurturing]
        }


        contact_update_rsp = HTTParty.put(URI(@close_api_base + "contact/#{contact['id']}/"),
                                          {
                                            headers: { 'Content-Type' => 'application/json' },
                                            body: contact_payload.to_json
                                          })

      end
    end
  end

  # fetch all close.com contacts
  def get_close_contacts
    has_more_contacts = true
    contact_offset = 0

    contacts = []
    until has_more_contacts.blank?
      close_rsp = HTTParty.get(URI(@close_api_base + "contact/?_skip=#{contact_offset}"))
      contacts.append(*close_rsp.parsed_response['data'])
      has_more_contacts = close_rsp.parsed_response['has_more']

      # we're iterating 100 contacts at a time.
      contact_offset += 100
    end

    contacts
  end

  # fetch close lead
  def get_close_lead(lead_id)
    lead = HTTParty.get(URI(@close_api_base + "lead/#{lead_id}/"))
  end

  # returns a list of customers
  def get_customer_segment(segment_id)
    customer_io_url = URI("https://beta-api.customer.io/v1/api/segments/#{segment_id}/membership")

    # gather emails of customers of in the segment
    customers = []
    next_page = 0
    until next_page.blank?
      # do not paginate if we are just getting started
      paginated_customer_io_url = if next_page == 0
                                    URI(customer_io_url)
                                  else
                                    URI("#{customer_io_url}?start=#{next_page}")
                                  end
      customer_rsp = HTTParty.get(paginated_customer_io_url, headers: @customer_io_auth)

      customers.append(*get_customers(customer_rsp['ids']))

      next_page = customer_rsp.parsed_response['next']
    end

    customers
  end

  # pulls up a customer.io customer based on the id passed.
  def get_customers(customer_ids)
    customer_emails = []
    customer_ids.each do |customer_id|
      customer_url = URI("https://beta-api.customer.io/v1/api/customers/#{customer_id}/attributes")
      customer_email_rsp = HTTParty.get(customer_url, headers: @customer_io_auth)
      customer_emails << customer_email_rsp.parsed_response['customer']
    end

    customer_emails
  end

  # decides whether a new segment is superior, inferior or no different
  # from the current segment
  def segment_rank(new_segment_id, active_segment_name)
    current_segment = @segments.select do |segment|
      segment[:number] == new_segment_id
    end
    current_segment = current_segment.last

    current_segment_index = @segments.index do |segment|
      segment[:number] == new_segment_id
    end

    active_segment = @segments.select do |segment|
      segment[:name] == active_segment_name
    end
    active_segment = active_segment.last

    active_segment_index = @segments.index do |segment|
      segment[:name] == active_segment_name
    end

    if current_segment == active_segment
      'same'
    elsif current_segment[:trumps]
      'superior'
    elsif active_segment_index.nil?
      'superior'
    elsif current_segment_index > active_segment_index
      'superior'
    else
      'inferior'
    end
  end


  def msg_slack(msg)
    HTTParty.post(WEBHOOK_URL.to_s, body: { text: msg }.to_json)
  end
end
