# frozen_string_literal: true

And('I click on rating button of first product') do
  @search_page = SearchPage.new
  @search_page.click_close_message_button
  @search_page.click_product_rating_button
end

Then('I should see rating of {string} on the page') do |product|
  expect(page).to have_content 'Ratings and Reviews'
  expect(page).to have_content product
end
