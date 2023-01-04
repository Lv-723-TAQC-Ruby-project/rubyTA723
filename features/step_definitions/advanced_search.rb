#not completed

When('I open EBAY home page') do
  @home_page = HomePage.new
  @home_page.load()
end

When("I click 'Advanced' search link") do
  @home_page.header.click_advanced_search_link
end

When("I enter item number {string} in the 'Enter keywords or item number' field") do |item_number|
  @advanced_search_page = AdvancedSearchPage.new
  @advanced_search_page.enter_in_enter_item_number_field(item_number)
end

When("I click on the search button") do
  @advanced_search_page.click_search_button
end

Then("I should see {string} item in the search results") do |expected_title|
  expect(page).to have_content(expected_title)
end
