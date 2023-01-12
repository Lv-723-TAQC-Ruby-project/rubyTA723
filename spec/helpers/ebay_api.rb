require 'rest-client'
require 'json'
require_relative '../configs/env'

class RequestApi
  URL = "https://sandbox.ebay.com/services/search/FindingService/v1?OPERATION-NAME=findItemsAdvanced&SERVICE-VERSION=1.0.0"

  def find_item_with_free_shipping(app_id, keyword)
    RestClient.get("#{URL}&SECURITY-APPNAME=#{app_id}&RESPONSE-DATA-FORMAT=XML&REST-PAYLOAD=true&paginationInput.entriesPerPage=2&keywords=#{keyword}&itemFilter. name=FreeShippingOnly&itemFilter.value=true")
  end
end