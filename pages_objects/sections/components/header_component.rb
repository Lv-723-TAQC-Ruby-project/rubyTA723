# frozen_string_literal: true

require_relative '../../base_section'

class HeaderComponent < BaseSection

  element :search_field_element, :xpath, "//div[@id='gh-ac-box']//input[@type='text']"
  element :advanced_search_link, :xpath, "//td[@id='gh-as-td']"
  element :shop_by_category, :xpath, "//button[@id='gh-shop-a']"
  element :subcategory, :xpath, "//a[@href='https://www.ebay.com/b/Golf-Equipment/1513/bn_1849088']"
  element :popular_categories, :xpath, "//a[@href = 'https://www.ebay.com/globaldeals?_trkparms=pageci%3A6f4179c4-8ce3-11ed-9da4-da2b2babcc0b%7Cparentrq%3A8177e7221850a1bdf5e59b93fffe3d7e%7Ciid%3A2']"
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