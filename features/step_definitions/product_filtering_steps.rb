# frozen_string_literal: true

When('I write my username and password') do
  @login_page.login(LOGIN, PASSWORD)
  @home_page = HomePage.new
  @home_page.load
end

When('I type {string} word in search field') do |search_word|
  @home_page.header.type_to_search_field(search_word)
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

When('I click Save this search') do
  @phone_page.click_save_result_button
end

Then('I expect to see the notification message') do
  expect(page).to have_text("We'll send you an email when there's something new.")
end
