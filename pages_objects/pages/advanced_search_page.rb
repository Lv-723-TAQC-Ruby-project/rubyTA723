require_relative '../base_page_with_header'

class AdvancedSearchPage < BasePageWithHeader

  element :enter_item_number_field, :xpath, "//input[@id='_nkw']"
  element :search_button, :xpath, "//button[contains(text(),'Search')]", match: :first
  element :find_stores_link, :xpath, "//a[contains(text(),'Find Stores')]"
  element :enter_store_name_field, :xpath, "//input[@name='store_search']"

  def enter_in_enter_store_name_field(store_name)
    enter_store_name_field.set(store_name)
  end

  def click_find_stores_button
    find_stores_link.click
  end

  def enter_in_enter_item_number_field(item_number)
    enter_item_number_field.set(item_number)
  end

  def click_search_button
    search_button.click
  end

end
