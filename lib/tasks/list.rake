# frozen_string_literal: true

require 'csv'
require 'yaml'

namespace :list do
  list_loc = '/lists'

  desc 'scrapes a list from the clipboard'
  task :build, [:number] => :environment do |_t, args|
    # set the folder where the import is stored
    list_folder = "#{Dir.pwd}#{list_loc}/"

    # the initial clipboard variable
    @clipboard = ''


    def get_clipboard
      Clipboard.paste.encode('UTF-8')
    end

    def monitor_clipboard
      new_clipboard = get_clipboard

      if @clipboard != new_clipboard
        @clipboard = new_clipboard
        puts 'clipboard changed'

        match = @clipboard.scan(/\d+\.\n(?:.*\n){1}(.*)/)
        puts match
      end

      # recursive call
      sleep(0.1)
      monitor_clipboard
    end

    # set the initial clipboard value
    @clipboard = get_clipboard

    # start the recursion
    monitor_clipboard

  end
end
