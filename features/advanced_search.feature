Feature: advanced search

  Example: Search by item number
    When I go to EBAY home page
    And I click 'Advanced' search link
    And I enter item number "2B040H" in the 'Enter keywords or item number' field
    And I click search button
    Then I should see "Mask" item in the search results

