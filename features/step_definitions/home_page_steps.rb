# frozen_string_literal: true

When('I go to EBAY home page') do
  @home_page = HomePage.new
  @home_page.load
end

When('I type {string} in search field') do |search_word|
  @home_page.header.type_to_search_field(search_word)
end

When('I click search button') do
  @home_page.click_search_button
end
