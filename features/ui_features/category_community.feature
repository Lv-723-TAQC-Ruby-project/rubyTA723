Feature: Check functionality of community

  Example: Search by kye word
    When I visit EBAY home page
    And I click category community
    And I type "car" in community search field
    And I click community search button
    Then I should see "car" in result search


  Scenario Outline: Writing post
    Given I am on the eBay login page
    When I enter my username and password
    And I visit EBAY home page
    And I click category community
    And I click button start a conversation
    And I type <word> in subject field
    And I click open all boards
    And I select <board> in comment
    And I type "nice" in comment field
    And I click create this post
    Then I should see "reply" in opened field

    Examples:
      |board        | word      |
      |"Electronics"|"iphone 14"|


