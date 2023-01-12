# frozen_string_literal: true

require 'rest-client'
require 'json'
require_relative '../configs/env'

class RequestApi
  URL = "https://sandbox.ebay.com/services/search/FindingService/v1?OPERATION-NAME=findItemsAdvanced&SERVICE-VERSION=1.0.0"
  BASE_URL= "https://sandbox.ebay.com/buy/browse/v1"

  def find_item_with_free_shipping(app_id, keyword)
    RestClient.get("#{URL}&SECURITY-APPNAME=#{app_id}&RESPONSE-DATA-FORMAT=XML&REST-PAYLOAD=true&paginationInput.entriesPerPage=2&keywords=#{keyword}&itemFilter. name=FreeShippingOnly&itemFilter.value=true")
  end

  def add_item_in_basket(body)
    RestClient.post("#{BASE_URL}/shopping_cart/add_item", body, Authorization: "Bearer #{TOKEN}")
  end

  def get_by_item_group(group_id)
    RestClient.get("#{BASE_URL}/item/get_items_by_item_group?item_group_id=#{group_id}", Authorization: "Bearer #{TOKEN}")
  end
end