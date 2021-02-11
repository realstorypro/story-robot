# frozen_string_literal: true

require 'csv'

namespace :export do
  list_loc = '/exports'

  desc 'exports a list stored in the database'
  task :list, [:number] => :environment do |_t, args|
    # set the folder where the import is stored
    export_folder = "#{Dir.pwd}#{list_loc}/"

    timestamp = Time.now.to_i
    attributes = %w[name domain_with_www]
    headers = ["name", "domain"]

    companies = Company.where(exported: false).limit(args[:number])

    CSV.open("#{export_folder}/#{timestamp}-#{args[:number]}.csv", 'w') do |csv|
      csv << headers
      companies.each do |record|
        csv << attributes.map { |attr| record.send(attr) }
        record.update(exported: true)
      end
    end

  end
end
