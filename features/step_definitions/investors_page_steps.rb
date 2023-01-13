# frozen_string_literal: true

Then('I should see correct stock price') do
  @investors_page = InvestorsPage.new
  expect(@investors_page.check_if_stock_price_correct).to be(true)
end
