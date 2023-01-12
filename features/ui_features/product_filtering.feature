Feature: Filter Product

  Example: Filter product by different features and save it
    When I go to eBay login page
    And I write my username and password
    And I type "phone" word in search field
    And I click on search button
    And I choose brand, storage capacity and condition
    And I click Save this search
    Then I expect to see the notification message
