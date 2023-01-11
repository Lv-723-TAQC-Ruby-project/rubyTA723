# frozen_string_literal: true

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

When('I click button start a conversation') do
  @category_community_page.click_start_conversation_button
end

When('I type {string} in subject field') do |word|
  @create_new_message_in_community =CreateNewMessageInCommunity.new
  @create_new_message_in_community.type_subject_word_field(word)
end

When('I click open all boards') do
  @create_new_message_in_community.click_choose_board_button
end

When('I select {string} in comment') do |board|
  @create_new_message_in_community.select_board_button(board)
end

When('I type {string} in comment field') do |word|
  @create_new_message_in_community.type_comment_field(word)
end

When('I click create this post') do
  @create_new_message_in_community.click_create_post_button
end

Then('I should see {string} in opened field') do |word|
  expect(page).to have_content(word)
end

