# frozen_string_literal: true

require 'rest-client'
require 'json'
require_relative '../configs/env'

class RequestApi
  SERVICE_URL = "https://sandbox.ebay.com/services/search/FindingService/v1"
  BROWSE_URL= "https://api.sandbox.ebay.com/buy/browse/v1"

  def free_shipping
    RestClient.get("#{SERVICE_URL}?SECURITY-APPNAME=#{APP_NAME}&OPERATION-NAME:findItemsAdvanced&itemFilter.name=FreeShippingOnly&itemFilter.value=true")
  end

  def add_item_in_basket(body)
    RestClient.post("#{BROWSE_URL}/shopping_cart/add_item", body, Authorization: "Bearer #{TOKEN}")
  end

  def get_by_legacy_id(legacy_id)
    RestClient.get("#{BROWSE_URL}/item/get_item_by_legacy_id?legacy_item_id=#{legacy_id}", Authorization: "Bearer #{TOKEN}")
  end
end