Feature: Adding a product to the basket

  Example: Successful adding to the basket
    When I go to EBAY home page
    And I type "Playstation 4 Slim PS4 Slim 500gb Console Complete" in search field
    And I click on search button
    And I select first product
    And I add the product to cart
    Then I should see "Playstation 4 Slim PS4 Slim 500gb Console Complete" in the cart
