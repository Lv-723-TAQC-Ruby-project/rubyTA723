# frozen_string_literal: true

When('I visit EBAY home page') do
  @home_page = HomePage.new
  @home_page.load
end

Given('I am on the eBay login page') do
  @login_page = LoginPage.new
  @login_page.load
end
