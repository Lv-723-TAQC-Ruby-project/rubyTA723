# frozen_string_literal: true

require 'rest-client'
require 'json'
require_relative '../configs/gs/env'

class MetadataItemsConditionPoliciesApi
  URL = 'https://api.sandbox.ebay.com/sell/metadata/v1/'

  def find_item_condition_policies(body)
    RestClient.get("#{URL}marketplace/EBAY_US/get_item_condition_policies?filter=categoryIds:{#{body}}",
                   Authorization: "Bearer #{TOKEN}")
  end
end
