# frozen_string_literal: true
When('I click on My ebay button') do
  @home_page.header.click_my_ebay_button
  @my_ebay_page = MyEbay.new
end

When('I click Saved searches button') do
  @my_ebay_page.click_saved_searches_button
end

Then('I expect to see a saved searches title') do
  expect(page).to have_text('Saved searches')
end

# When('I click three_dot button') do
#   @my_ebay_page.click_three_dots_button
# end
#
# When('I click unsave button') do
#   @my_ebay_page.click_unsave_button


