# frozen_string_literal: true

class CategoryCommunityPage < BasePageWithHeader

  element :key_word_field, "input[name='messageSearchField']"
  element :search_button, "input[id='submitContext_69a9147d99e071']"

  def type_key_word_field(key_word)
    key_word_field.set(key_word)
  end

  def click_search_button
    search_button.click
  end

end