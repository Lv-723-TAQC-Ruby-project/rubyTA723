Feature: Advanced search

  Scenario Outline: Find by item number
    When I open EBAY home page
    And I click 'Advanced' search link
    And I enter item number <number> in the 'Enter keywords or item number' field
    And I click on the search button
    Then I should see <item title>
    Examples:
      |    number      | item title                                                                  |
      |   "2B040H"     | "Sudee+ Intensive Nourishing Mask 25g x 5ea Anti Wrinkle Soothing K-Beauty" |
      |   "PKU85147"   | "Elite Trainer Box ETB Crown Zenith Pokemon"                                |
      | "174937115870" | "New Arrive Nylon Replacement Fishing Bottom Rhombus Mesh Fishing Net"      |

  Example: Find Store
    When I open EBAY home page
    And I click 'Advanced' search link
    And I click 'Find Stores' link
    And I enter "Samsung" in the 'Enter Store name or keywords' field
    And I click on the search button
    Then I should see "Welcome to the official Samsung Store!"

  Example: Find by seller
    When I open EBAY home page
    And I click 'Advanced' search link
    And I click 'By seller' link
    And I click 'Only show items from' checkbox
    And I enter "Samsung" in the seller name field
    And I click 'Sellers with eBay stores' radiobutton
    And I click bottom search button
    Then I should see "Samsung" in the parameters of search on the result page

  Scenario: Advanced Hints link checking
    When I open EBAY home page
    And I click 'Advanced' search link
    And I click hint using advanced search options
    Then I should see search tips advanced hint page with "Customer Service" text

  Example: Search tips link checking
    When I open EBAY home page
    And I click 'Advanced' search link
    And I click hint search tips
    Then I should see search tips hint page with "General search tips" title


