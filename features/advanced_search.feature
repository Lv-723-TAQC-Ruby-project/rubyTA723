Feature: advanced search

  Example: Search by item number
    When I open EBAY home page
    And I click 'Advanced' search link
    And I enter item number "2B040H" in the 'Enter keywords or item number' field
    And I click on the search button
    Then I should see "Sudee+ Intensive Nourishing Mask 25g x 5ea Anti Wrinkle Soothing K-Beauty" item in the search results
