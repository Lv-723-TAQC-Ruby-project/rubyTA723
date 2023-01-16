class MarketingApi
  URL = 'https://api.sandbox.ebay.com/buy/marketing/v1_beta'

  def get_merchandised_products
    RestClient.get("#{URL}/merchandised_product?category_id=9355&metric_name=BEST_SELLING",
                   { Authorization: "Bearer #{TOKEN}" })
  end

end
