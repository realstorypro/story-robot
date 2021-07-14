# frozen_string_literal: true

require 'selenium-webdriver'

class Scraper
  def initialize; end

  def start
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
    return 'Rails' if (source.include?('csrf-param') && source.include?('csrf-token'))
    return 'Contentful' if source.include?('ctfassets.net')
    return 'WordPress' if source.include?('wp-')
    return 'Drupal' if (source.include?('drupal') || source.include?('Drupal'))

    false
  end

  private

  # gets the source of the page
  def source
    @driver.page_source
  end

end
