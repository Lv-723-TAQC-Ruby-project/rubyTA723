Feature: Adding a product to the cart

  Example: Successful adding to the cart
    When I go to the EBAY home page
    And I type "Playstation 4 Slim PS4 Slim 500gb Console Complete" in search field
    And I click on search button
    And I select first product
    And I add the product to cart
    Then I should see "Playstation 4 Slim PS4 Slim 500gb Console Complete" in the cart
