# frozen_string_literal: true

require 'rest-client'
require 'json'
require_relative '../configs/gs/env'

class SearchEbayApi
  URL = 'https://api.sandbox.ebay.com/buy/browse/v1/'

  def search_for(subject)
    RestClient.get("#{URL}item_summary/search?q=#{subject}&category_ids=9355", Authorization: "Bearer #{TOKEN}")
  end

  def search_refinements(item)
    RestClient.get(
      "#{URL}item_summary/search?q=#{item}&limit=3&category_ids=171485&fieldgroups=ASPECT_REFINEMENTS,CATEGORY_REFINEMENTS,CONDITION_REFINEMENTS,BUYING_OPTION_REFINEMENTS", Authorization: "Bearer #{TOKEN}"
    )
  end

  def search_with_filter(product, category_id, color)
    RestClient.get("#{URL}item_summary/search?q=#{product}&aspect_filter=categoryId:#{category_id},Color:#{color}", Authorization: "Bearer #{TOKEN}")
  end
end