Feature: Check the basic functionality for the active user

  Example: Search by key word
    Given I am on the Ebay main page
    And I click category community
    And I type "car" in community search field
    And I click community search button
    Then I should see "car"

  Scenario: Subscribe on the page
    Given I am on the eBay login page
    When I enter my username and password
    And I am on the Ebay main page
    And I click category community
    And I select Announcements on community page
    And I click subscribe on Latest Announcements
    Then I should see "Unsubscribe"

  Scenario Outline: Write post
    Given I am on the eBay login page
    When I enter my username and password
    And I am on the Ebay main page
    And I click category community
    And I click button start a conversation
    And I type <word> in subject field
    And I click open all boards
    And I select <board> in comment
    And I type "nice" in comment field
    And I click create this post
    Then I should see "reply"

    Examples:
      |board        | word      |
      |"Electronics"|"iphone 14"|









