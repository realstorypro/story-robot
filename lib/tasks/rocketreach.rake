# frozen_string_literal: true

require 'csv'

namespace :rocketreach do

  desc 'formats the rocketreach export for the import into close.com'
  task :format_export, [:number] => :environment do |_t, args|
    puts '*** formatting rocket reach export ***'

    unformatted = "#{Dir.pwd}/rocketreach/unformatted/#{args[:number]}.csv"
    formatted = "#{Dir.pwd}/rocketreach/formatted/#{args[:number]}.csv"
    headers = %w[first_name last_name company title email needs_nurturing decision_maker]

    data = CSV.table(unformatted)

    CSV.open(formatted, 'w') do |csv|
      csv << headers
      data.each do |row|
        next if row[:recommended_work_email].blank?

        csv << [row[:first_name], row[:last_name], row[:employer], row[:title], row[:recommended_work_email], 'Yes', 'Yes']
      end
    end

  end
end

