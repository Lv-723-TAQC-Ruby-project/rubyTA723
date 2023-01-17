Feature: As a guest user I want to be able find items in search

  Scenario Outline: Searching items
    Given I am on the Ebay main page
    When I type <item> in search field
    And  I click search button
    Then I expect to see search results <search results>

    Examples:
      |    item      | search results                                                                     |
      |   "ipad"     | "iPad 10.2 64GB WiFi Space Gray 2021 - AppleCare Bookable"                         |
      |   "watches"  | "New!! Raketa Aviation Watch Mechanical Russian Soviet USSR Rare Wrist Men's Nato" |
      | "glasses"    | "Anti Blue Transition Reading Glasses Multifocal Progressive Photochromic Lens"    |