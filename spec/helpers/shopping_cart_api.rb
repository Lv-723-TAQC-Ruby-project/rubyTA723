# frozen_string_literal: true

class ShoppingCartApi
  URL = 'https://api.sandbox.ebay.com/buy/browse/v1'

  def add_item_in_basket(body)
    RestClient.post("#{URL}/shopping_cart/add_item", body,
                    Authorization: "Bearer #{TOKEN_APP}", marketplace_id: "EBAY_US")
  end
end
