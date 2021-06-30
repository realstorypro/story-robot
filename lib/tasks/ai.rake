# frozen_string_literal: true

require 'csv'

namespace :ai do
  list_loc = '/lib/training'

  desc 'exports a list stored in the database'
  task :build_decision_maker, [:number] => :environment do |_t, args|
    # set the folder where the import is stored
    export_folder = "#{Dir.pwd}#{list_loc}/"

    headers = ["weeks old", "segment", "clicked_link", "visited_website", "visited pricing page"]
    weeks_old = (1..7).to_a
    segment = [0, 2, 3, 4]
    clicks = %w[yes no]
    visited_webiste = %w[yes no]
    visited_pricing_page = %w[yes no]

    CSV.open("#{export_folder}/decision-training.csv", 'w') do |csv|
      csv << headers
      weeks_old.each do |week|
        segment.each do |segment|
          clicks.each do |click|
            visited_webiste.each do |v_website|
              visited_pricing_page.each do |v_pricing|
                puts "week #{week} | segment #{segment} | click #{click} | website #{v_website} | pricing #{v_pricing}"
                csv << [week, segment, click, v_website, v_pricing]
              end
            end
          end
        end
      end
    end

  end
end
