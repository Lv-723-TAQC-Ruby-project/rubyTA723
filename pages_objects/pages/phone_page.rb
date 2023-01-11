# frozen_string_literal: true

class PhonePage < BasePageWithHeader
  element :brand_category, :xpath, "//span[@class = 'cbx x-refine__multi-select-cbx'][text()='Apple']"
  element :storage_capacity, :xpath, "//span[@class='cbx x-refine__multi-select-cbx'][text()='128 GB']"
  element :condition, :xpath, "//span[@class='cbx x-refine__multi-select-cbx'][text()='New']"
  element :save_result, :xpath, "//div[@class='follow-ebay follow-inline']"

  def choose_brand_Apple_button
    brand_category.click
  end

  def choose_storage_capacity_button
    storage_capacity.click
  end

  def choose_condition_button
    storage_capacity.click
  end

  def click_save_result_button
    save_result.click
  end
end
