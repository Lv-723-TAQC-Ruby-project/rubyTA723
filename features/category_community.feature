Feature: Community search by keyword

  Example: Search by keyword
    When I open EBAY home page
    And I click category community
    And I type "car" in community search field
    And I click community search button
    Then I should see "car" in result search