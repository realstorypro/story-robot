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

  # fetches a contact by id
  def find_contact_by_id(id)
    find('contact', id)
  end

  # fetch a singular lead
  def find_lead(id)
    find('lead', id)
  end

  # fetches all contacts
  def all_contacts
    all('contact')
  end

  # fetches all tasks
  def all_tasks
    all('task')
  end

  # fetches all sequences
  def all_sequence
    all('sequence')
  end

  # creates a new task
  def create_task(payload)
    create('task', payload)
  end

  # updates existing contact
  def update_contact(id, payload)
    update('contact', id, payload)
  end

  # updates an existing task
  def update_task(id, payload)
    update('task', id, payload)
  end

  # finds all sequence subscriptions
  # pass in the sequence id
  def all_sequence_subscriptions(id)
    has_more_response = true
    response_offset = 0

    response = []
    until has_more_response.blank?
      close_rsp = HTTParty.get(URI(@close_api_base + "sequence_subscription/?sequence_id=#{id}&_skip=#{response_offset}"))
      response.append(*close_rsp.parsed_response['data'])
      has_more_response = close_rsp.parsed_response['has_more']

      # we're iterating 100 responses at a time.
      response_offset += 100
    end

    response
  end

  private

  # finds an item of a particular find
  def find(kind, id)
    HTTParty.get(URI(@close_api_base + "#{kind}/#{id}/"))
  end

  # creates an item
  # the payload must be passed as a hash
  def create(kind, payload)
    HTTParty.post(URI("#{@close_api_base}#{kind}/"),
                  {
                    headers: { 'Content-Type' => 'application/json' },
                    body: payload.to_json
                  })
  end

  # updates singular item
  # the payload must be passed as hash
  def update(kind, id, payload)
    HTTParty.put(URI("#{@close_api_base}#{kind}/#{id}/"),
                 {
                   headers: { 'Content-Type' => 'application/json' },
                   body: payload.to_json
                 })
  end

  # fetches all of a kind
  def all(kind)
    has_more_response = true
    response_offset = 0

    response = []
    until has_more_response.blank?
      close_rsp = HTTParty.get(URI(@close_api_base + "#{kind}/?_skip=#{response_offset}"))
      response.append(*close_rsp.parsed_response['data'])
      has_more_response = close_rsp.parsed_response['has_more']

      # we're iterating 100 responses at a time.
      response_offset += 100
    end

    response
  end
end
