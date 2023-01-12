# frozen_string_literal: true

class CategoryCommunityPage < BasePageWithHeader
  element :key_word_field, "input[name='messageSearchField']"
  element :search_button, "input[name='submitContext'] "
  element :start_conversation_button, "a[class='lia-button lia-button-primary']", match: :first

  def type_key_word_field(key_word)
    key_word_field.set(key_word)
  end

  def click_search_button
    search_button.click
  end

  def click_start_conversation_button
    sleep(3)
    start_conversation_button.click
  end

end
