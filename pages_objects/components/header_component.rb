# frozen_string_literal: true

require_relative '../base_page'

class HeaderComponent < BasePage

  element :search_field_element,:xpath, "//div[@id='gh-ac-box']//input[@type='text']"
  element :advanced_search_link, :xpath, "//td[@id='gh-as-td']"
  element :shop_by_category, :xpath, "//button[@id='gh-shop-a']"
  element :subcategory, :xpath, "//a[@href='https://www.ebay.com/b/Golf-Equipment/1513/bn_1849088']"
  def type_to_search_field(text)
    search_field_element.set(text)
  end

  def click_advanced_search_link
    advanced_search_link.click
  end
  def click_shop_by_category
    shop_by_category.click
  end
  def click_subcategory
    subcategory.click
  end

end