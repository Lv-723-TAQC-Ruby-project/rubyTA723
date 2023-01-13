# frozen_string_literal: true

require 'rest-client'
require 'json'
require_relative '../configs/env'

class RequestApi
  SERVICE_URL = 'https://sandbox.ebay.com/services/search/FindingService/v1'
  BROWSE_URL = 'https://api.sandbox.ebay.com/buy/browse/v1'

  def free_shipping
    RestClient.get("#{SERVICE_URL}", operation_name: 'findItemsAdvanced', content_type: :json, accept: :json, security_appname: "#{APP_NAME}")
  end
  def add_item_in_basket(body)
    RestClient.post("#{BROWSE_URL}/shopping_cart/add_item&X-EBAY-C-MARKETPLACE-ID:EBAY_US", body,
                    Authorization: "Bearer #{TOKEN_APP}")
  end

  def get_by_legacy_id(legacy_id)
    RestClient.get("#{BROWSE_URL}/item/get_item_by_legacy_id?legacy_item_id=#{legacy_id}",
                   Authorization: "Bearer #{TOKEN}")
  end
end
