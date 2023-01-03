require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.register_driver :site_prism do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome,timeout: 30)
end

Capybara.configure do |config|

  config.default_driver = :site_prism

  config.default_max_wait_time = 10
end