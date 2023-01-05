Feature: Change language interface of site


  Scenario: Successful change language
    When I open EBAY home page
    And I open section of languages
    And I select German language
    Then I should see "Elektronik, Autos, Mode, Sammlerstücke, Möbel und mehr Online-Shopping | eBay" in browser title


