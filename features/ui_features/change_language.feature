
Feature: Change language interface of site


  Scenario Outline: Successful change language
    Given I open EBAY home page
    When I open section of languages
    And I select <language>
    Then I expect to see <expected title> in browser title

    Examples:
      |  language   |  expected title                                                             |
      |  "Germany"  |  "Elektronik, Autos, Mode, Sammlerstücke, Möbel und mehr Online-Shopping"   |
      |  "France"   |  "eBay : high-tech, maison, jardin, auto-moto et bien plus"                 |
      |  "Japan"    |  "【公式】eBayの越境ECで、国境を越え世界へ。｜イーベイ・ジャパン"                      |

