# frozen_string_literal: true

require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'webdrivers'
require 'capybara/window'

browser = ENV.fetch('BROWSER', 'chrome').to_sym

options = Selenium::WebDriver::Chrome::Options.new.tap do |opts|
  opts.add_argument('--start-maximized')
  # opts.add_argument("--headless")
  # opts.add_argument("--window-size=1920,1080")
  opts.add_argument('--no-sandbox')
  opts.add_argument('--disable-dev-shm-usage')
end

Capybara.register_driver :site_prism do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.configure do |config|
  config.default_driver = :site_prism
  config.app_host = BASE_URL
  config.default_max_wait_time = 10
end
