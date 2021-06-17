# frozen_string_literal: true

class CloseApi
  def initialize
    @close_api_base = "https://#{ENV['CLOSE_API_KEY']}:@api.close.com/api/v1/"
  end

  def search(json_file)
    search_config = JSON.parse(File.read("./lib/tasks/search/#{json_file}"))
    contacts = []

    more_results = true
    while more_results
      close_rsp = HTTParty.post(URI("#{@close_api_base}data/search/"),
                                {
                                  headers: { 'Content-Type' => 'application/json' },
                                  body: search_config.to_json
                                })
      contacts.append(*close_rsp.parsed_response['data'])
      search_config['cursor'] = close_rsp.parsed_response['cursor']
      more_results = false if close_rsp.parsed_response['cursor'].nil?
    end

    contacts
  end

  # finds contact in a contact list based on the email address
  def find_contact(contacts, search_email)
    found = false

    # contacts have multiple emails, we go through all of them looking for
    # a match
    contacts.each do |contact|
      contact['emails'].each do |email|
        email_address = email['email']

        # finding the contact
        next unless search_email == email_address

        found = contact
      end
    end
    found
  end

  # fetch the lead from close.com based on the lead id
  def find_lead(lead_id)
    HTTParty.get(URI(@close_api_base + "lead/#{lead_id}/"))
  end

  # fetches all contacts from close.com
  def all_contacts
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

  # updates the contact based on the contact id and payload (passed as hash)
  def update_contact(contact_id, payload)
    HTTParty.put(URI(@close_api_base + "contact/#{contact_id}/"),
                 {
                   headers: { 'Content-Type' => 'application/json' },
                   body: payload.to_json
                 })

  end

  # creates a task based on the payload
  def create_task(payload)
    task_create_rsp = HTTParty.post(URI("#{@close_api_base}task/"),
                                    {
                                      headers: { 'Content-Type' => 'application/json' },
                                      body: task_payload.to_json
                                    })
  end
end
