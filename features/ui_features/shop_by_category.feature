Feature: I want to choose shop category and filter items on page

  Scenario: Shop by category
    Given I am on the Ebay main page
    When  I click shop by category
    And I click subcategory
    And I click brand sorting
    And I choose brand
    Then I expect to see page with chosen filters 'TaylorMade Golf Equipment'
