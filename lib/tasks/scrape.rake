# frozen_string_literal: true

require 'selenium-webdriver'

namespace :scraper do

  desc 'begin the scrape process'
  task :scrape, [:number] => :environment do |_t, args|
    # notifications
    webhook_url = 'https://hooks.slack.com/services/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'

    # initial variables
    BASE_URL = 'https://www.crunchbase.com'

    @companies = Company.where(found: false)


    def load_page(page)
      puts "loading #{page}"
    end

    def format_name(name)
      name.downcase.gsub('\n', '').strip.gsub('.', '-').gsub(' ', '-').gsub(':', '-')
    end

    @companies.each do |company|
      formatted_name = format_name(company.name)
      puts formatted_name

      load_page("/organization/#{formatted_name}")
    end

    #driver = Selenium::WebDriver::Driver.for :chrome
    #driver.navigate.to 'https://www.google.com'
    #sleep(250)
  end
end
