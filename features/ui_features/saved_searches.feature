Feature: Saved searches

  Example: Add filtered result to saved searches chapter
    Given I visit the eBay login page
    When I write my username and password
    And I type "phone" word in search field
    And I click on search button
    And I choose brand, storage capacity and condition
    And I click Save this search
    And I click on My ebay button
    And I click Saved searches button
    Then I expect to see a saved searches title

  # TODO: fix and uncomment test or delete it
#  Example: Unsave all searches
#    Given I go to eBay login page
#    When I write my username and password
#    And I type "phone" word in search field
#    And I click on search button
#    And I click Save this search
#    And I click on My ebay button
#    And I click Saved searches button
#    And I click three_dot button
#    And I click unsave button
#    Then I expect to see a title Nothing's here (yet)
