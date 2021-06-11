# frozen_string_literal: true

# require 'uri'
# require 'net/http'
# require 'openssl'

namespace :close do
  @customer_io_auth = { "Authorization": "Bearer #{ENV['CUSTOMER_IO_API_KEY']}" }

  desc 'syncs the segments from customer.io to close.com'
  task :segment_sync, [:number] => :environment do |_t, args|
    msg_slack 'preparing to sync customer.io segments to close.com'

    customer_io_url = URI('https://beta-api.customer.io/v1/api/segments/8/membership')

    # iterate over other pages
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
      puts customer_emails

      next_page = customer_rsp.parsed_response['next']
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
