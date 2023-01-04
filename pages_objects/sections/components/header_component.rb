# frozen_string_literal: true

require_relative '../../base_section'

class HeaderComponent < BaseSection

  element :search_field_element,:xpath, "//div[@id='gh-ac-box']//input[@type='text']"
  element :advanced_search_link, :xpath, "//td[@id='gh-as-td']"

  def type_to_search_field(text)
    search_field_element.set(text)
  end

  def click_advanced_search_link
    advanced_search_link.click
  end

end