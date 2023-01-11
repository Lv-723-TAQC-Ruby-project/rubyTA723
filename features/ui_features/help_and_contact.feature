Feature: Help and Contact functionality

  Example: Navigate test
    When I go to EBAY home page
    And I click on the Help and Contact link
    Then I expect to see "eBay Customer Service" in browser title


  Scenario Outline: Positive test
    When I go to EBAY Help and Contact page
    And I type <search_text> in the eBay Help search field
    And I expect to see a drop down menu below the search field
    And I click on the eBay Help search button
    Examples:
      | search_text |expected_title                                                          |
      |"Buy"        |"Elektronik, Autos, Mode, Sammlerstücke, Möbel und mehr Online-Shopping"|
      |"Sell"       |"eBay : high-tech, maison, jardin, auto-moto et bien plus"              |
      |"Paypal"     |""                                                                      |