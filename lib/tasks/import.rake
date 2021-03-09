# frozen_string_literal: true

require 'csv'
require 'yaml'

namespace :import do
  list_loc = '/lists'

  desc 'imports a list stored in a numbered folder'
  task :list, [:number] => :environment do |_t, args|
    # set the folder where the import is stored
    import_folder = Dir.pwd + list_loc + "/#{args[:number]}"

    # load in the settings
    settings = YAML.safe_load(File.read("#{import_folder}/settings.yml"))

    # iterate through the companies
    CSV.foreach("#{import_folder}/list_of_company_names_raw.csv") do |row|
      # no double entries
      next if Company.where(name: row[0]).count.positive?

      # minimum 2 letters
      next if row[0].length < 2
      
      Company.create(
        name: row[0],
        slug: nil,
        keyword: settings['keyword'],
        headquarters: settings['headquarters'],
        employees: settings['employees'],
        revenue: settings['revenue'],
        status: settings['status'],
        ipo: settings['ipo'],
        website_tech: settings['website_tech'],
        company_tech: settings['company_tech'],
        found: false
      )
    end
  end
end
