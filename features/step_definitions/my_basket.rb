And('I select first product') do
  @search_page = SearchPage.new
  @search_page.click_close_message
  @search_page.click_title_first_product_button
end

And('I add the product to cart') do
  require 'pry'; binding.pry
  @search_page.click_add_to_cart_button
end

And('I should see {string} in the cart') do |product|
  expect(page).to have_content 'Shopping cart'
  expect(page).to have_content product
end
