# frozen_string_literal: true

When('I click shop by category') do
  @home_page.header.click_shop_by_category
end

When('I click subcategory') do
  @home_page.header.click_subcategory
  @golf_equipment_page = GolfEquipmentPage.new
end

When('I click brand sorting') do
  @golf_equipment_page.sort_brand_click
end

When('I choose brand') do
  @golf_equipment_page.chosen_brand
end

Then('I expect to see filtered page') do
  # TODO: Add test here
  expect(true).to be true
end
