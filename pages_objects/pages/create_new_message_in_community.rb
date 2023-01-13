# frozen_string_literal: true

class CreateNewMessageInCommunity < BasePageWithHeader
  element :subject_word_field, "input[name='subject']"
  element :choose_board_button, "select[name='board']"
  element :comment_field, "body[id='tinymce']"
  element :create_post_button, "input[id='submitContext_0']"

  def type_subject_word_field(word)
    subject_word_field.set(word)
  end

  def click_choose_board_button
    choose_board_button.click
    sleep(3)
  end

  def select_board_button(board)
    find(:xpath, "//*[text()='#{board}']").click
  end

  def type_comment_field(word)
    comment_field.set(word)
  end

  def click_create_post_button
    create_post_button.click
    sleep(3)
  end
end
