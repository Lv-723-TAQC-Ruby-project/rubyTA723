# frozen_string_literal: true

Given('I search an item {string}')do |item|
  @home_page.header.type_to_search_field(item)
end

When('I click search button') do
  @home_page.header.click_search_button
end

Then('I expect to see search results {string}') do |results|
  expect(@home_page).to have_content(results)
end