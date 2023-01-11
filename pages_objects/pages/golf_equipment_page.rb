# frozen_string_literal: true

class GolfEquipmentPage < BasePageWithHeader
  element :brand_sort, :xpath, "//div[@id='s0-27_2-9-0-1[0]-0-0-6-5-4[1]-flyout']"
  element :brand, :xpath, "//a[@href='https://www.ebay.com/b/TaylorMade-Golf-Equipment/1513/bn_1991085?mag=1']"

  def sort_brand_click
    brand_sort.click
  end

  def chosen_brand
    brand.click
  end
end
