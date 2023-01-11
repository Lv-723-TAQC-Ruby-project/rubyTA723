# frozen_string_literal: true

require_relative '../base_page_with_header'

class AdvancedSearchPage < BasePageWithHeader
  element :find_items_link, :xpath, "//a[contains(text(),'Find items')]"
  element :find_stores_link, :xpath, "//a[contains(text(),'Find Stores')]"
  element :by_seller_link, :xpath, "//a[contains(text(),'By seller')]"
  element :by_item_number_link, :xpath, "//a[contains(text(),'By item number')]"
  element :items_in_store_link, :xpath, "//a[contains(text(),'Items in stores')]"
  element :search_tips_link, :xpath, "//a[@class='learnmore']", match: :first
  element :advanced_search_options_link, :xpath, "//a[contains(text(),'using advanced search options')]"

  element :enter_item_number_field, :xpath, "//input[@id='_nkw']"
  element :enter_store_name_field, :xpath, "//input[@id='store_search']"
  element :only_show_items_from_checkbox, :xpath, "//input[@id='_fss']"
  element :enter_sellers_field, :xpath, "//input[@id='_sasl']"
  element :saved_sellers_list_radiobutton, :xpath, "//input[@id='LH_FavSellers_id']"
  element :sellers_with_ebay_stores_radiobutton, :xpath, "//input[@id='LH_SellerWithStore_id']"

  element :search_button, :xpath, "//button[contains(text(),'Search')]", match: :first
  element :search_button_bottom, :xpath, "//button[@id='searchBtnLowerLnk']"
  element :title_first_product_button, :xpath, "//span[@role='heading'][text()='Playstation 4 Slim PS4 Slim 500gb Console Complete (FAST FREE POSTAGE)']"
  element :add_to_cart_button, :xpath, "/html/body/div[5]/div[3]/div/div/div[2]/div[3]/div[2]/form/div[2]/div/div[1]/div[2]/ul/li[2]/div/a"

  def click_search_tips_link
    search_tips_link.click
  end

  def click_advanced_search_options
    advanced_search_options_link.click
  end

  def click_find_stores_link
    find_stores_link.click
  end

  def click_find_items_link
    find_items_link.click
  end

  def click_by_sellers_link
    by_seller_link.click
  end

  def click_show_items_from_checkbox
    only_show_items_from_checkbox.click
  end

  def click_sellers_with_ebay_stores_radiobutton
    sellers_with_ebay_stores_radiobutton.click
  end

  def enter_in_sellers_field(seller_name)
    enter_sellers_field.set(seller_name)
  end

  def enter_in_store_name_field(store_name)
    enter_store_name_field.set(store_name)
  end

  def enter_in_item_number_field(item_number)
    enter_item_number_field.set(item_number)
  end

  def click_search_button
    search_button.click
  end

  def click_search_button_bottom
    search_button_bottom.click
  end

  def click_title_first_product_button
    title_first_product_button.click
    sleep(2)
  end

  def click_add_to_cart_button
    add_to_cart_button.click
    sleep(2)
  end

end
