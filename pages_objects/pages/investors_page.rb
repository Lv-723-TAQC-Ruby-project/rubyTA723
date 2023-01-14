# frozen_string_literal: true

require 'basic_yahoo_finance'
require_relative '../base_page_with_header'

class InvestorsPage < BasePageWithHeader
  element :stock_price, :xpath, "//span[@class='module-home-stock_price']"

  def check_if_stock_price_correct
    stock_price.text == get_actual_stock_price.to_s
  end

  private

  def get_actual_stock_price
    query = BasicYahooFinance::Query.new
    data = query.quotes('EBAY')
    data['EBAY']['regularMarketPrice']
  end
end
