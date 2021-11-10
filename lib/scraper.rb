# frozen_string_literal: true

require 'selenium-webdriver'

class Scraper
  def initialize
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--headless')
    @driver = Selenium::WebDriver::Driver.for :chrome, options: options
  end

  # stops the scraper
  # @return [Boolean] returns true once the driver has quit
  def quit
    @driver.quit
    true
  end

  # loads a page based on a url
  def load_page(url)
    url = url.gsub('http://', 'https://')
    @driver.get(url)

    # waits to ensure everything loads
    sleep(5)
    true
  rescue Net::ReadTimeout
    false
  rescue Selenium::WebDriver::Error::UnknownError
    false
  rescue StandardError
    false
  end

  def determine_tech
    return 'Rails' if (page_source.include?('csrf-param') && page_source.include?('csrf-token'))
    return 'Contentful' if page_source.include?('ctfassets.net')
    return 'WordPress' if page_source.include?('wp-')
    return 'Drupal' if (page_source.include?('drupal') || page_source.include?('Drupal'))

    false
  end

  # gets the source of the page
  def page_source
    @driver.page_source
  end

end
