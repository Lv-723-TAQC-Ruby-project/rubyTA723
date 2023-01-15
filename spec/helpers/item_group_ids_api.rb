# frozen_string_literal: true

require 'rest-client'
require 'json'
require_relative '../configs/env'

class ItemsGroupIdsApi
  MAIN_URL = 'https://api.sandbox.ebay.com/buy/browse/v1'

  def get_items(id)
    RestClient.get("#{MAIN_URL}/item?item_group_ids=#{id}", Authorization: "Bearer #{TOKEN}")
  end
end
