# frozen_string_literal: true

When('I type {string} in search field') do |search_word|
  @home_page.header.type_to_search_field(search_word)
end

When('I click search button') do
  @home_page.header.click_search_button
end

When('I click Investors link') do
  @home_page.click_investors_link
end
