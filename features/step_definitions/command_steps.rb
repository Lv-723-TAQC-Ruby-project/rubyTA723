# frozen_string_literal: true

Given('I am on the Ebay Advanced search page') do
  @home_page = HomePage.new
  @home_page.load
  @home_page.header.click_advanced_search_link
  @advanced_search_page = AdvancedSearchPage.new
end
