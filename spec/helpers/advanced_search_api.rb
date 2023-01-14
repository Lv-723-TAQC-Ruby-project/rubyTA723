# frozen_string_literal: true

class RequestApi
  URL = 'https://api.sandbox.ebay.com/buy/browse/v1'

  def get_by_legacy_id(legacy_id)
    RestClient.get("#{URL}/item/get_item_by_legacy_id?legacy_item_id=#{legacy_id}",
                   Authorization: "Bearer #{TOKEN}")
  end
end
