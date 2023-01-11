Feature: API search


  Scenario Outline: : Successful API search
    When I open API connection
    And I search for <mobile_brand>
    Then I expect to see <expected_result>

    Examples:
      |mobile_brand  |expected_result                                                      |
      |"LG"          |"LG G7 ThinQ G710VMP 64GB 4GB RAM 6.1‘’ Unlocked Original Smartphone"|
      |"samsung"     |"Samsung, SM-J320A Galaxy J3 Unlocked White"                         |