When('I open EBAY home page') do
  @home_page = HomePage.new
  @home_page.load
end

When("I click 'Advanced' search link") do
  @home_page.header.click_advanced_search_link
  @advanced_search_page = AdvancedSearchPage.new
end

When("I click 'Find Stores' link") do
  @advanced_search_page.click_find_stores_link
end

When("I click 'Find Items' link") do
  @advanced_search_page.click_find_items_link
end

# When(/^I click ('Find Stores'|'Find Items') link$/) do |link_name|
#   if link_name == 'Find Stores'
#     @advanced_search_page.click_find_stores_link
#   else
#     @advanced_search_page.click_find_items_link
#   end
# end

When("I enter {string} in the 'Enter Store name or keywords' field") do |store_name|
  @advanced_search_page.enter_in_store_name_field(store_name)
end

When("I enter item number {string} in the 'Enter keywords or item number' field") do |item_number|
  @advanced_search_page.enter_in_item_number_field(item_number)
end

When("I click on the search button") do
  @advanced_search_page.click_search_button
end

Then("I should see {string}") do |expected_title|
  expect(page).to have_content(expected_title)
end

And("I click 'By seller' link") do
  @advanced_search_page.click_by_sellers_link
end

And("I click 'Only show items from' checkbox") do
  @advanced_search_page.click_show_items_from_checkbox
end

And("I enter {string} in the seller name field") do |seller_name|
  @advanced_search_page.enter_in_sellers_field(seller_name)
end

And("I click 'Sellers with eBay stores' radiobutton") do
  @advanced_search_page.click_sellers_with_ebay_stores_radiobutton
end

And("I click bottom search button") do
  @advanced_search_page.click_search_button_bottom
end

Then("I should see {string} in the parameters of search on the result page") do |expected_seller|
  expect(page).to have_content(expected_seller)
end

And("I click hint search tips") do
  # @advanced_search_page.click_search_tips_link
  # @hint = @advanced_search_page.switch_to_window { title == 'General search tips' }
  @hint_window = window_opened_by do
    @advanced_search_page.click_search_tips_link
  end
end

And("I click hint using advanced search options") do
  @advanced_search_page.click_advanced_search_options
  @hint_advanced = @advanced_search_page.switch_to_window { title == 'Advanced search | eBay' }
end

Then("I should see search tips hint page with {string} title") do |expected_content|
  within_window(@hint_window) do
  expect(@hint_window).to have_content(expected_content)
  end
end

Then('I should see search tips advanced hint page with {string} title') do |expected_title|
  expect(@hint_advanced).to have_content(expected_title)
end