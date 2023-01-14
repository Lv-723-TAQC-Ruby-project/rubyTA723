Feature: Checking of rating of products

  Scenario Outline: Successful checking of rating
    When I am on the Ebay main page
    And I type <product> in search field
    And I click on search button
    And I click on rating button of first product
    Then I should see rating of <product> on the page

    Examples:
      |  product                                                             |
      |  "Playstation 4 Slim PS4 Slim 500gb Console Complete"                |
      |  "Samsung Galaxy Watch 4 44mm Aluminum Smartwatch SM-R870 Silver"    |
      |  "Samsung Galaxy S20+ Plus 5G G986U 128GB Factory"                   |
