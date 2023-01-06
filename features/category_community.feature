Feature: Community search by kye word

  Example: Search by kye word
    When I visit EBAY home page
    And I click category community
    And I type "car" in community search field
    And I click community search button
    Then I should see "car" in result search