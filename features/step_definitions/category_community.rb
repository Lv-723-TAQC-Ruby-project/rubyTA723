When('I click category community') do
  @home_page.click_category_community_button
end

When('I type {string} in community search field') do |key_word|
  @category_community_page = CategoryCommunityPage.new
  @category_community_page.type_key_word_field(key_word)
end

When('I click community search button') do
  @category_community_page.click_search_button
end

Then('I should see {string} in result search') do |result_search|
  expect(page).to have_content(result_search)
end

