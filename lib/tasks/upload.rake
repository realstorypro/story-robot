# frozen_string_literal: true

require 'csv'
require 'yaml'
require 'httparty'

namespace :upload do
  list_loc = '/lists'

  desc 'uploads a number of contacts to airtable'
  task :contacts, [:number] => :environment do |_t, args|
    # notifications
    WEBHOOK_URL = ENV['SLACK_URL']

    puts "Preparing to upload #{args[:number]} contacts ..."

    contacts = Contact.where(uploaded: false).order(:created_at).limit(args[:number])
    contacts.each do |contact|
      puts "Uploading: #{contact.first_name} #{contact.last_name}"

      company_tech = if contact.company.company_tech.nil?
                       ''
                     else
                       contact.company.company_tech
                     end

      website_tech = if contact.company.website_tech.nil?
                       ''
                     else
                       contact.company.website_tech
                     end

      contact_data = {
        records: [{
          fields: {
            "Status": 'new',
            "Last Name": contact.last_name,
            "First Name": contact.first_name,
            "Title": contact.title,
            "Company": contact.company.name,
            "Company URL": contact.company.url,
            "Headquarters": contact.company.headquarters.titleize,
            "Employees": contact.company.employees,
            "IPO": contact.company.ipo,
            "Company Tech": company_tech,
            "Website Tech": website_tech,
            "Revenue": contact.company.revenue,
            "Keyword": contact.company.keyword,
            "Location": contact.company.location
          }
        }]
      }

      rsp = HTTParty.post('https://api.airtable.com/v0/app11hOAvhlxNli5d/People',
                          body: contact_data.to_json,
                          headers: {
                            'Authorization' => "Bearer #{ENV['AIRTABLE_API_KEY']}",
                            'Content-type' => 'application/json'
                          })

      puts rsp

      contact.uploaded = true
      contact.save

      sleep(30)
    end
  end
end
