And('I select first product') do
  @advanced_search_page = AdvancedSearchPage.new
  @advanced_search_page.click_title_first_product_button
end

And('I add the product to cart') do
  @advanced_search_page.click_add_to_cart_button
end

And('I should see {string} in the cart') do |product|
  expect(page).to have_content 'Shopping cart'
  expect(page).to have_content product
end
