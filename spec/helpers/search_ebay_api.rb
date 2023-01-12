# frozen_string_literal: true

require 'rest-client'
require 'json'
require_relative '../configs/env'

class SearchEbayApi
  URL = 'https://api.sandbox.ebay.com/buy/browse/v1/'

  def search_for(subject)
    RestClient.get("#{URL}item_summary/search?q=#{subject}&category_ids=9355", Authorization: "Bearer #{TOKEN}")
  end
end
