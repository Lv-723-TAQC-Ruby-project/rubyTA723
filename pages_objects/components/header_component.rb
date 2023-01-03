# frozen_string_literal: true

require_relative '../base_page'

class HeaderComponent < BasePage

  element :search_field_element,:xpath, "//div[@id='gh-ac-box']//input[@type='text']"

  def type_to_search_field(text)
    search_field_element.set(text)
  end

end