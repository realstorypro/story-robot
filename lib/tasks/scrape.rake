# frozen_string_literal: true

require 'selenium-webdriver'
require 'httparty'

namespace :scraper do
  desc 'begin the scrape process'
  task :scrape, [:number] => :environment do |_t, _args|
    # notifications
    WEBHOOK_URL = 'https://hooks.slack.com/services/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'

    # initialize selenium driver
    @driver = Selenium::WebDriver::Driver.for :chrome

    # initial variables
    BASE_URL = 'https://www.crunchbase.com'

    @companies = Company.where(found: false, error: false)

    def load_page(route)
      url = "#{BASE_URL}#{route}"

      # load the url
      @driver.get(url)

      bot_protection = true

      while bot_protection
        begin
          @driver.find_element(:class, 'logo')
          bot_protection = false
        rescue Selenium::WebDriver::Error::NoSuchElementError
          puts('scraper protection engaged')
          msg_slack('The scraping protection activated. Please do a manual bypass.')

          sleep(60)
          @driver.get(url)
        end
      end

      puts "loading #{url}"
    end

    def format_name(name)
      name.downcase.gsub('\n', '').strip.gsub('.', '-').gsub(' ', '-').gsub(':', '-')
    end

    def msg_slack(msg)
      HTTParty.post(WEBHOOK_URL.to_s, body: { text: msg }.to_json)
    end

    @companies.each do |company|
      formatted_name = format_name(company.name)
      load_page("/organization/#{formatted_name}")

      # lets wait 5 seconds to ensure the page loads
      sleep(5)

      begin
        profile_name = @driver.find_element(:css, '.profile-name')
      rescue Selenium::WebDriver::Error::NoSuchElementError
        puts 'profile  not found'
        company.error = true
        company.save
        next
      end


    end


  end
end
