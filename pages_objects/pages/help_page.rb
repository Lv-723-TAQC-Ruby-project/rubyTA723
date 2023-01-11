# frozen_string_literal: true

require_relative '../base_page_with_header'

class HelpPage < BasePageWithHeader
  set_url '/help'

  element :search_field, :xpath, "//input[@id='sr-input']"
  element :search_button, :xpath, "//button[@id='sr-action']"
  element :search_drop_down_menu, :xpath, "//div[@id='itemList']"

  def type_search_field(text)
    search_field.set(text)
  end

  def click_search_button
    search_button.click
  end
end
