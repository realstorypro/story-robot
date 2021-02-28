# frozen_string_literal: true

require 'selenium-webdriver'
require 'httparty'

namespace :contacts do
  desc 'enrich the scraped contacts'
  task :enrich, [:number] => :environment do |_t, args|
    # notifications
    WEBHOOK_URL = ENV['SLACK_URL']

    msg_slack("Enhancing #{args[:number]} contacts")
  end

  def msg_slack(msg)
    HTTParty.post(WEBHOOK_URL.to_s, body: { text: msg }.to_json)
  end
end
