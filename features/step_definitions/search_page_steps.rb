# frozen_string_literal: true

When('I click ending soonest in Sort dropdown') do
  @search_page = SearchPage.new
  @search_page.click_sort_dropdown
  @search_page.select_sort_ending_soonest
  @search_page.check_if_sort_is_correct
end


Then('I should see items sorted by time left') do
  expect(@search_page.check_if_sort_is_correct).to be(true)
end
