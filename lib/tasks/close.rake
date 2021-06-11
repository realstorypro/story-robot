# frozen_string_literal: true

# require 'uri'
# require 'net/http'
# require 'openssl'

namespace :close do
  @customer_io_auth = { "Authorization": "Bearer #{ENV['CUSTOMER_IO_API_KEY']}" }
  @close_api_base = "https://#{ENV['CLOSE_API_KEY']}:@api.close.com/api/v1/"

  desc 'syncs the segments from customer.io to close.com'
  task :segment_sync, [:number] => :environment do |_t, args|
    msg_slack 'preparing to sync customer.io segments to close.com'

    customer_io_url = URI('https://beta-api.customer.io/v1/api/segments/8/membership')

    # gather emails of customers of in the segment
    next_page = 0
    until next_page.blank?
      # do not paginate if we are just getting started
      paginated_customer_io_url = if next_page == 0
                                    URI(customer_io_url)
                                  else
                                    URI("#{customer_io_url}?start=#{next_page}")
                                  end
      customer_rsp = HTTParty.get(paginated_customer_io_url, headers: @customer_io_auth)

      customer_emails = get_customer_emails(customer_rsp['ids'])

      next_page = customer_rsp.parsed_response['next']
    end

    # fetch all close.com contacts
    has_more_contacts = true
    contact_offset = 0

    contacts = []
    until has_more_contacts.blank?
      close_rsp = HTTParty.get(URI(@close_api_base + "contact/?_skip=#{contact_offset}"))
      contacts.append(*close_rsp.parsed_response["data"])
      has_more_contacts = close_rsp.parsed_response["has_more"]

      # we're iterating 100 contacts at a time.
      contact_offset += 100
    end

    # iterate through every contact
    contacts.each do |contact|
      contact['emails'].select do |email|
        email_address = email['email']

        found_match = false
        customer_emails.select do |customer_email|
          found_match = customer_email.include? email_address
        end

        next unless found_match

        puts 'found a match for', contact

        unless contact['custom.cf_Rp7Z0tH5Jt2CeVU3uv1q02cRHfoIAl1ub8rDR9AiYHW'] == '2-emails'
          msg_slack "#{contact['display_name']} has been nurtured"
        end

        contact_payload = {
          'custom.cf_Rp7Z0tH5Jt2CeVU3uv1q02cRHfoIAl1ub8rDR9AiYHW': '2-emails'
        }

        update_rsp = HTTParty.put(URI(@close_api_base + "contact/#{contact['id']}/"),
                                  {
                                    headers: { 'Content-Type' => 'application/json' },
                                    body: contact_payload.to_json
                                  })
      end
    end

  end

  def get_customer_emails(customer_ids)
    customer_emails = []
    customer_ids.each do |customer_id|
      customer_url = URI("https://beta-api.customer.io/v1/api/customers/#{customer_id}/attributes")
      customer_email_rsp = HTTParty.get(customer_url, headers: @customer_io_auth)
      customer_emails << customer_email_rsp.parsed_response["customer"]["attributes"]["email"]
    end

    customer_emails
  end

  def msg_slack(msg)
    HTTParty.post(WEBHOOK_URL.to_s, body: { text: msg }.to_json)
  end
end
