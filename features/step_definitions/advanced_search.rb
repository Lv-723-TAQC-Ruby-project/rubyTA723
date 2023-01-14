# frozen_string_literal: true

When("I click 'Advanced' search link") do
  @home_page.header.click_advanced_search_link
  @advanced_search_page = AdvancedSearchPage.new
end

When('I click {string} link') do |link_name|
  case link_name
  when 'Find Stores'
    @advanced_search_page.click_find_stores_link
  when 'By seller'
    @advanced_search_page.click_by_sellers_link
  else
    @advanced_search_page.click_find_items_link
  end
end

When("I enter {string} in the 'Enter Store name or keywords' field") do |store_name|
  @advanced_search_page.enter_in_store_name_field(store_name)
end

When("I enter item number {string} in the 'Enter keywords or item number' field") do |item_number|
  @advanced_search_page.enter_in_item_number_field(item_number)
end

Then('I should see {string}') do |expected_title|
  expect(page).to have_content(expected_title)
end

And("I click 'Only show items from' checkbox") do
  @advanced_search_page.click_show_items_from_checkbox
end

And('I enter {string} in the seller name field') do |seller_name|
  @advanced_search_page.enter_in_sellers_field(seller_name)
end

And("I click 'Sellers with eBay stores' radiobutton") do
  @advanced_search_page.click_sellers_with_ebay_stores_radiobutton
end

When('I click on the {string} search button') do |placement_of_button|
  if placement_of_button == 'top'
    @advanced_search_page.click_search_button
  else
    @advanced_search_page.click_search_button_bottom
  end
end

And('I click hint search tips') do
  @advanced_search_page.click_search_tips_link
  @hint = @advanced_search_page.switch_to_window { title == 'General search tips' }
end
