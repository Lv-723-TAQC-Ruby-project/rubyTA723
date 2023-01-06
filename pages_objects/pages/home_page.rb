# frozen_string_literal: true

require_relative '../base_page_with_header'

class HomePage < BasePageWithHeader
  set_url "/"
  element :category_community_button, "a[href='https://community.ebay.com'][class='gf-bttl thrd']"
  element :section_of_languages_button_element, "a[id='gf-fbtn']"
  element :language_German_button_element, :xpath,"//*[text()='Germany']"


  def click_category_community_button
    category_community_button.click
  end

  def click_section_of_languages_button
    section_of_languages_button_element.click
  end

  def click_German_language_button
    language_German_button_element.click
  end




end

