# frozen_string_literal: true

require 'rest-client'
require 'json'
require_relative '../configs/env'
require_relative 'base_api'
class ItemApi < BaseAPI
  BROWS_URL = 'https://api.sandbox.ebay.com/buy/browse/v1'

  def get_group_of_items(group_id)
    RestClient.get("#{BROWS_URL}/item/get_items_by_item_group?item_group_id=#{group_id}",
                   Authorization: "Bearer #{@token}")
  end
end
