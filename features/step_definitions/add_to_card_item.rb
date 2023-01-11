
Given("I visit the eBay login page") do
  @login_page = LoginPage.new
  @login_page.load
end
When("I print my username and password") do
  @login_page.login(LOGIN, PASSWORD)
  @home_page = HomePage.new
  @home_page.load()

end

When("On homepage I click watchlist") do
  @home_page.watchlist_click
  @home_page.item_from_watchlist_click
  @item_to_buy_page = ItemToBuyPage.new
end
When("I am on item page I select color and capacity")do
  @item_to_buy_page.color_select
  @item_to_buy_page.color_chosen
  @item_to_buy_page.capacity_select
  @item_to_buy_page.capacity_chosen
end
When("I want to buy item now")do
  @item_to_buy_page.buy_item_click
  @order_page = OrderPage.new
end
When("I choose country")do
  @order_page.select_country
  @order_page.country_click
end
When("I enter information") do
  @order_page.enter_address1("ghgjkll")
  @order_page.enter_address2("ojirfjkg")
  @order_page.enter_city("fdsfsdrhooooofiW")
  @order_page.enter_state("LKMJFDSJMLKFVDS")
  @order_page.enter_postal_code("LDLKDFLFD")
  @order_page.enter_phone("0987654326889")
end
Then("I click continue and get error message")do
  @order_page.continue_click
  expect(page).to have_text('We noticed a problem. Please review:')
end