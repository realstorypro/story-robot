# frozen_string_literal: true

require 'csv'
require 'yaml'
require 'tty-prompt'

namespace :list do
  list_loc = '/lists'

  desc 'scrapes a list from the clipboard'
  task :build, [:number] => :environment do |_t, args|
    # set the folder where the import is stored
    @list_folder = "#{Dir.pwd}#{list_loc}/"

    prompt = TTY::Prompt.new

    prompt.warn '---------------------------'
    prompt.warn 'Welcome to the list scraper'
    prompt.warn '---------------------------'

    @list_number = prompt.ask 'What is the list number?', convert: :int
    keyword = prompt.ask 'What keyword did you search for?', default: 'none', convert: :string
    headquarters = prompt.ask 'Where are the headquarters?', default: 'United States', convert: :string
    employees = prompt.select 'How many employees', %w[1-10 11-50 51-100 101-250 251-500 501-1000 1001-5000 5001-10000 10001-10001+]
    revenue = prompt.select 'What is the revenue', %w[0-1m 1m-10m 10m-50m 50m-100m 100m-500m 500m-1b 1b-10b 10b-10b+]
    status = prompt.select 'What is the company status', %w[Active Closed]
    ipo = prompt.select 'IPO Status', %w[Public Private Delisted]
    website_tech = prompt.ask 'Website tech?'
    company_tech = prompt.ask 'Company tech?'

    settings = {}

    settings['keyword'] = keyword
    settings['headquarters'] = headquarters
    settings['employees'] = employees
    settings['revenue'] = revenue
    settings['status'] = status
    settings['ipo'] = ipo
    settings['website_tech'] = website_tech
    settings['company_tech'] = company_tech

    Dir.mkdir "#{@list_folder}#{@list_number}"
    File.open("#{@list_folder}#{@list_number}/settings.yml", "w") { |file| file.write(settings.to_yaml) }

    def get_clipboard
      Clipboard.paste.encode('UTF-8')
    end

    def monitor_clipboard
      new_clipboard = get_clipboard

      if @clipboard != new_clipboard
        @clipboard = new_clipboard
        puts 'clipboard changed'

        match = @clipboard.scan(/\d+\.\n(?:.*\n){1}(.*)/)

        CSV.open("#{@list_folder}#{@list_number}/list_of_company_names_raw.csv", 'ab') do |csv|
          match.each do |company|
            csv << company
          end
        end

      end

      # recursive call
      sleep(0.05)
      monitor_clipboard
    end

    # set the initial clipboard value
    @clipboard = get_clipboard

    # start the recursion
    monitor_clipboard

  end
end