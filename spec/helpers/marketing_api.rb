# frozen_string_literal: true

require 'rest-client'
require 'json'
require_relative '../configs/env'
require_relative 'base_api'

class MarketingApi < BaseAPI
  URL = 'https://api.sandbox.ebay.com/buy/marketing/v1_beta'

  def get_merchandised_products
    RestClient.get("#{URL}/merchandised_product?category_id=9355&metric_name=BEST_SELLING",
                   { Authorization: "Bearer #{@token}" })
  end

end
