require 'rest-client'
require 'json'

class EbayApi
  URL = 'https://api.sandbox.ebay.com/buy/browse/v1/'


  def search_for(subject)
    RestClient.get("#{URL}item_summary/search?q=#{subject}&category_ids=9355", Authorization: "Bearer #{TOKEN}")
  end
end
