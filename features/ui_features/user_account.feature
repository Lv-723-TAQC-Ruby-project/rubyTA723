Feature: Log in to eBay
  As a user, I want to be able to log in to eBay using my username and password
  so that I can access my account and perform various actions.

  Scenario: Successful login
    Given I am on the eBay login page
    When I enter my username and password
    Then I should be logged in to eBay
