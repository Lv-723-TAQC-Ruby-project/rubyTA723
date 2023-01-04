
When('I open EBAY home page') do
  @home_page = HomePage.new
  @home_page.load()
end

When("I click 'Advanced' search link") do
  @home_page.header.click_advanced_search_link
  @advanced_search_page = AdvancedSearchPage.new
end

When("I click 'Find Stores' link") do
  @advanced_search_page.click_find_stores_button
end

When("I enter store name in {string} field") do |store_name|
  @advanced_search_page.enter_in_enter_store_name_field(store_name)
end

When("I enter item number {string} in the 'Enter keywords or item number' field") do |item_number|
  @advanced_search_page.enter_in_enter_item_number_field(item_number)
end

When("I click on the search button") do
  @advanced_search_page.click_search_button
end

Then("I should see {string} text in the search results") do |expected_title|
  expect(page).to have_content(expected_title)
end

