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
      company_location = contact.company.location
      puts company_location

      geocoding_resp =
        HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?key=#{ENV['GOOGLE_MAPS_KEY']}&censor=false&address=#{company_location}")

      coordinates = geocoding_resp["results"][0]["geometry"]["location"]
      contact.lat = coordinates["lat"]
      contact.lng = coordinates["lng"]

      timezone_resp =
        HTTParty.get("https://maps.googleapis.com/maps/api/timezone/json?key=#{ENV['GOOGLE_MAPS_KEY']}&censor=false&timestamp=1331161200&location=#{contact.lat},#{contact.lng}")

      contact.timezone = timezone_resp["timeZoneId"]
      contact.enriched = true

      contact.save

      puts contact.inspect
    end

  end

  desc 'finding and verifying emails for scraped contacts'
  task :find_email, [:number] => :environment do |_t, args|
    msg_slack("Finding emails for #{args[:number]} contacts")
  end


  def msg_slack(msg)
    HTTParty.post(WEBHOOK_URL.to_s, body: { text: msg }.to_json)
  end
end
