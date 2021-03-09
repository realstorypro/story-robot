# frozen_string_literal: true

require 'csv'
require 'tty-prompt'

namespace :export do
  list_loc = '/exports'

  desc 'exports a list stored in the database'
  task :list, [:number] => :environment do |_t, args|
    # set the folder where the import is stored
    export_folder = "#{Dir.pwd}#{list_loc}/"

    timestamp = Time.now.to_i
    attributes = %w[name domain_with_www]
    headers = ["name", "domain"]


    prompt = TTY::Prompt.new

    prompt.warn '---------------------------'
    prompt.warn 'Welcome to the list exporter'
    prompt.warn '---------------------------'

    keyword = prompt.ask 'What keyword did you search for?', default: 'none', convert: :string
    employees = prompt.select 'How many employees', %w[1-10 11-50 51-100 101-250 251-500 501-1000 1001-5000 5001-10000 10001-10001+]
    revenue = prompt.select 'What is the revenue', %w[0-1m 1m-10m 10m-50m 50m-100m 100m-500m 500m-1b 1b-10b 10b-10b+]
    ipo = prompt.select 'IPO Status', %w[Public Private Delisted]
    website_tech = prompt.ask 'Website tech?', {default: nil}
    company_tech = prompt.ask 'Company tech?', {default: nil}

    companies = Company.fields_where(keyword: keyword, employees: employees, revenue: revenue, ipo: ipo, website_tech: website_tech, company_tech:company_tech).where(exported: false).limit(args[:number])

    CSV.open("#{export_folder}/#{timestamp}-#{args[:number]}.csv", 'w') do |csv|
      csv << headers
      companies.each do |record|
        csv << attributes.map { |attr| record.send(attr) }
        record.update(exported: true)
      end
    end

  end
end
