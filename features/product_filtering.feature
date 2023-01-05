Feature: Filter Product

  Example: Filter product by different features
    When I go to the EBAY home page
    And I type "phone" in search field
    And I click on search button
    And I choose brand, storage capacity and condition
    Then I should save this search results

