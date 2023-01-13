# frozen_string_literal: true

require 'rest-client'
require 'json'
require_relative '../configs/env'

class RequestApi
  URL = 'https://api.sandbox.ebay.com/buy/browse/v1'

  def add_item_in_basket(body)
    RestClient.post("#{URL}/shopping_cart/add_item", body,
                    Authorization: "Bearer #{TOKEN_APP}", marketplace_id: "EBAY_US")
  end

  def get_by_legacy_id(legacy_id)
    RestClient.get("#{URL}/item/get_item_by_legacy_id?legacy_item_id=#{legacy_id}",
                   Authorization: "Bearer #{TOKEN}")
  end
end
