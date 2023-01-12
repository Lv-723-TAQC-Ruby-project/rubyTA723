Feature: EBAY

  Example: EBAY
    When I go to EBAY home page
    And I type "ruby" in search field
    And I click search button
    Then I should see "ruby" in browser title