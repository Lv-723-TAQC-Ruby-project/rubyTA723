Feature: Shop by category

  Example: Shop by category
    Given I visit EBAY home page
    When  I click shop by category
    And I click subcategory
    And I click brand sorting
    And I choose brand
    Then I expect to see filtered page
