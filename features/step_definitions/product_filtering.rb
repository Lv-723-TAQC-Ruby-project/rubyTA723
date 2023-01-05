When('I go to the EBAY home page') do
  @home_page = HomePage.new
  @home_page.load()
end

When('I click on search button') do
  @home_page.header.click_search_button
  @phone_page = PhonePage.new
end

When('I choose brand, storage capacity and condition') do
  @phone_page.choose_brand_Apple_button
  @phone_page.choose_storage_capacity_button
  @phone_page.choose_condition_button
end

Then('I should save this search results') do
  @phone_page.click_save_result_button
end


