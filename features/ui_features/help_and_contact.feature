Feature: Help and Contact functionality

  Example: Navigate test
    Given I am on the Ebay main page
    When I click on the Help and Contact link
    Then I expect to see "eBay Customer Service" in browser title

  Scenario Outline: Positive test
    When I go to EBAY Help and Contact page
    And I type <search_text> in the eBay Help search field
    And I expect to see a drop down menu below the search field
    And I click on the eBay Help search button
    Then I expected to see a URL query with the word <search_text>
    Examples:
      | search_text |
      |"Buy"        |
      |"Sell"       |
      |"PayPal"     |

  Scenario Outline: Max value test
    Given I go to EBAY Help and Contact page
    When I type <search_text> in the eBay Help search field
    And I click on the eBay Help search button
    Then I check if the length value in the search field is 100
    Examples:
      | search_text |
      | "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis nat" |
