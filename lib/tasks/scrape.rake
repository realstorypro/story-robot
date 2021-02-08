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

      # lets make sure that we pulled up the actual company
      begin
        profile_name = @driver.find_element(:css, '.profile-name')
      rescue Selenium::WebDriver::Error::NoSuchElementError
        puts 'profile  not found'
        company.error = true
        company.save
        next
      end

      # lets get the company url, and clean it up so we only get the domain name
      begin
        company.url = @driver.find_element(:xpath, '//profile-section[1]//link-formatter/a')
                             .text.gsub('/', '').gsub('www.', '')
      rescue Selenium::WebDriver::Error::NoSuchElementError
        company.error = true
        company.save
        next
      end

      # location second (sometimes its unavailable)
      begin
        company.location = @driver.find_element(:xpath,
                                                '/html/body/chrome/div/mat-sidenav-container/mat-sidenav-content/div/ng-component/entity-v2/page-layout/div/div/div/page-centered-layout[2]/div/row-card/div/div[1]/profile-section/section-card/mat-card/div[2]/div/fields-card/ul/li[1]/label-with-icon/span/field-formatter/identifier-multi-formatter/span').text
      rescue Selenium::WebDriver::Error::NoSuchElementError
      end

      puts "located in: #{company.location} with a url: #{company.url}"

      company.save

      # lets pause for a little bit to prevent automation detection
      sleep(rand(3..10))

      # now lets start scraping people
      load_page "/organization/#{formatted_name}/people"

      # lets wait 5 seconds to ensure the page loads
      sleep(5)
      begin
        names = @driver.find_elements(:xpath, '//section-card[1]//identifier-image/following-sibling::div/a')
        titles = @driver.find_elements(:xpath,
          '//section-card[1]//identifier-image/following-sibling::div/field-formatter[1]/span'
        )
      rescue Selenium::WebDriver::Error::NoSuchElementError
        puts 'no people found'
        next
      end

      # erase all company contacts prior to adding them
      company.contacts.delete_all

      names.each_with_index do |full_name, index|
        title = titles[index].text

        # ignoring board members and advisors
        next if ['Board Member', 'Advisor'].include?(title)

        first_name = full_name.text.split(' ')[0]
        last_name = full_name.text.split(' ')[1]

        puts "Found: #{title} #{first_name} #{last_name}"
        company.contacts.create(first_name: first_name, last_name: last_name, title: title)
      end

      company.found = true
      company.save

      puts "finished scraping #{formatted_name}"

      # lets pause for a little bit to prevent automation detection
      sleep(rand(3..10))

    end

    puts "scraping complete"
    @driver.quit
  end
end
