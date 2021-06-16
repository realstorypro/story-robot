# frozen_string_literal: true

class CustomerApi
  def initialize
    @customer_io_auth = { "Authorization": "Bearer #{ENV['CUSTOMER_IO_API_KEY']}" }
    @customer_api_base = 'https://beta-api.customer.io/v1/api/'
    @segments = [
      { number: 6,
        name: 'Unsubscribed',
        trumps: true,
        needs_nurturing: 'No',
        add_task: false,
        task_message: '' },
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
      { number: 13,
        name: 'Three Email Opens',
        trumps: false,
        needs_nurturing: 'No',
        add_task: false,
        task_message: 'Three emails opened, consider starting a sequence for' },
      { number: 14,
        name: 'Four Email Opens',
        trumps: false,
        needs_nurturing: 'No',
        add_task: true,
        task_message: 'Four emails opened, consider starting a sequence for' },
      { number: 10,
        name: 'Link Clicked',
        trumps: false,
        needs_nurturing: 'No',
        add_task: true,
        task_message: 'Link clicked, consider starting a sequence for' }
    ]
  end

  attr_reader :segments

  # returns an array of contacts from a segment
  # @param [Integer] segment_id an id of the segment
  # @return [Array] an array of customers
  def get_segment(segment_id)
    # this api endpoint returns a list of customer ids
    # we have to do another call to get the customers themselves
    customer_io_url = URI("#{@customer_api_base}segments/#{segment_id}/membership")

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

  # returns an array of customers based on ids passed
  def get_customers(customer_ids)
    customer_emails = []
    customer_ids.each do |customer_id|
      customer_url = URI("#{@customer_api_base}customers/#{customer_id}/attributes")
      customer_email_rsp = HTTParty.get(customer_url, headers: @customer_io_auth)
      customer_emails << customer_email_rsp.parsed_response['customer']
    end

    customer_emails
  end


end