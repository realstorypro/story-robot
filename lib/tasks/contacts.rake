# frozen_string_literal: true

require 'selenium-webdriver'
require 'httparty'

namespace :contacts do
  # notification url
  WEBHOOK_URL = ENV['SLACK_URL']

  desc 'enrich the scraped contacts'
  task :enrich, [:number] => :environment do |_t, args|
    msg_slack("Enriching #{args[:number]} contacts")

    contacts = Contact.where(enriched: false, invalid_email: false, uploaded: false).limit(args[:number])
    puts "Enriching #{contacts.count}..."

    contacts.each do |contact|

      # skip enrichment, but set enriched to yes and set no address field to true
      if contact.company.location.nil?
        puts "no address for #{contact.company.name}"
        contact.update(no_address: true, enriched: true)
        next
      end

      company_location = I18n.transliterate(contact.company.location)
      puts company_location

      geocoding_resp =
        HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?key=#{ENV['GOOGLE_MAPS_KEY']}&censor=false&address=#{company_location}")

      coordinates = geocoding_resp['results'][0]['geometry']['location']
      contact.update(lat: coordinates['lat'], lng: coordinates['lng'])

      timezone_resp =
        HTTParty.get("https://maps.googleapis.com/maps/api/timezone/json?key=#{ENV['GOOGLE_MAPS_KEY']}&censor=false&timestamp=1331161200&location=#{contact.lat},#{contact.lng}")

      contact.update(timezone: timezone_resp['timeZoneId'], enriched: true)
    end

  end

  desc 'finding and verifying emails for scraped contacts'
  task :find_email, [:number] => :environment do |_t, args|
    msg_slack("Finding emails for #{args[:number]} contacts")

    contacts = Contact.where(enriched: true, invalid_email: false, uploaded: false, email: nil).limit(args[:number])

    contacts.each do |contact|
      begin
        first_name = I18n.transliterate(contact.first_name.downcase.capitalize)
        last_name = I18n.transliterate(contact.last_name.downcase.capitalize)
        domain = contact.company.url
      rescue
        contact.update(invalid_email: true)
        next
      end

      email_finder_resp =
        HTTParty.get "https://api.hunter.io/v2/email-finder?domain=#{domain}&first_name=#{first_name}&last_name=#{last_name}&api_key=#{ENV['HUNTER_API_KEY']}"

      # skip to the next contact if we can't find an email
      begin
        if email_finder_resp.parsed_response['data']['verification']['status'].nil?
          contact.update(invalid_email: true)
          next
        end
      rescue

        case email_finder_resp.parsed_response['errors'][0]['details']
        when 'Last name cannot only be made up of single letters'
          contact.update(invalid_email: true)
          next
        when 'This domain name cannot receive emails.'
          contact.update(invalid_email: true)
          next
        when 'The provided domain is not a valid domain name'
          contact.update(invalid_email: true)
          next
        when 'Last name has wrong format'
          contact.update(invalid_email: true)
          next
        when 'First name cannot only be made up of single letters'
          contact.update(invalid_email: true)
          next
        when "The person behind this email address has asked us directly or indirectly to stop the processing of this email. Therefore, you shouldn't process this email yourself in any way."
          contact.update(invalid_email: true)
          next
        when "You are missing one of the following parameters: company, domain"
          contact.update(invalid_email: true)
          next
        end

        byebug
      end

      contact.update(email: email_finder_resp.parsed_response['data']['email'])

      email_verifier_resp =
        HTTParty.get "https://api.hunter.io/v2/email-verifier?email=#{contact.email}&api_key=#{ENV['HUNTER_API_KEY']}"

      # skip to the next contact if the email is not valid
      if email_verifier_resp.parsed_response['data']['score'] < 80
        contact.update(invalid_email: true)
        next
      end

      msg_slack "Found email for #{first_name} #{last_name}"
    end

  end


  def msg_slack(msg)
    HTTParty.post(WEBHOOK_URL.to_s, body: { text: msg }.to_json)
  end
end
