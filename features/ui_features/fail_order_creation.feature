Feature:I sign in as a user and I want to order item with invalid data
  Scenario: I find needed item and click buy now and enter invalid data
    Given I visit the eBay login page
    When I print my username and password
    And I open page with item
    And On item page I select color and capacity
    And I want to buy item now
    Then I choose country
    And I enter information
    Then I click continue and get error message