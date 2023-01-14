Feature: EBAY

  Example: EBAY
    Given I visit EBAY home page
    When I type "ruby" in search field
    And I click search button
    Then I expect to see "ruby" in browser title
