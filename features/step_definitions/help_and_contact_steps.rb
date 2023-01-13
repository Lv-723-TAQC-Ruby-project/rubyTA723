# frozen_string_literal: true

When('I go to EBAY Help and Contact page') do
  @help_page = HelpPage.new
  @help_page.load
end

When('I click on the Help and Contact link') do
  @home_page.header.click_help_contact_link
end

When('I type {string} in the eBay Help search field') do |search_word|
  @help_page.type_search_field(search_word)
end

When('I click on the eBay Help search button') do
  @help_page.click_search_button
end

When('I expect to see a drop down menu below the search field') do
  expect(true).to be @help_page.has_search_drop_down_menu?
end

When('I expected to see a URL query with the word {string}') do |search_word|
  expect(@help_page).to have_current_path("/help/sr?query=#{search_word}&origin=1")
end

When('I check if the length value in the search field is {int}') do |number|
  expect(@help_page.search_field.value.length).to be number
end
