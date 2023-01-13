Feature: Ending soonest filter

  Scenario: Ending soonest filter checking
    Given I am on the Ebay main page
    And I type "samsung s21+" in search field
    And I click search button
    And I click ending soonest in Sort dropdown
    Then I should see items sorted by time left