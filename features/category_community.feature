Feature: Community search by kye word

  Example: Search by kye word
    When I open EBAY home page
    When I click category community
    And I type "car" in community search field
    And I click community search button
    Then I should see "car" in result search