
require_relative '../base_page'

class AdvancedSearchPage < BasePage
  set_url "/"

  element :enter_item_number_field, :xpath, "//input[@id='_nkw']"
  element :search_button, :xpath, "//button[@id='searchBtnLowerLnk']"

  def enter_in_enter_item_number_field(item_number)
    enter_item_number_field.set(item_number)
  end

  def click_search_button
    search_button.click
  end

end
