
Feature: Change language interface of site


  Example: Successful change language
    When I open EBAY home page
    And I open section of languages
    And I select Germany language
    Then I expect to see "Elektronik, Autos, Mode, Sammlerstücke, Möbel und mehr Online-Shopping | eBay" in browser title


