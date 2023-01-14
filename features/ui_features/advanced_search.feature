Feature: Advanced search

  As a user, I want to be able to search items by their number or seller,
  store by its name and see search tips in order to easily search items on eBay.

  Scenario Outline: Find by item number
    Given I am on the Ebay Advanced search page
    And I enter item number <number> in the 'Enter keywords or item number' field
    And I click on the "top" search button
    Then I should see <item title>
    Examples:
      |    number      | item title                                                                  |
      |   "2B040H"     | "Sudee+ Intensive Nourishing Mask 25g x 5ea Anti Wrinkle Soothing K-Beauty" |
      |   "PKU85147"   | "Elite Trainer Box ETB Crown Zenith Pokemon"                                |
      | "174937115870" | "New Arrive Nylon Replacement Fishing Bottom Rhombus Mesh Fishing Net"      |

  Example: Find Store
    Given I am on the Ebay Advanced search page
    And I click 'Find Stores' link
    And I enter "Samsung" in the 'Enter Store name or keywords' field
    And I click on the "top" search button
    Then I should see "Welcome to the official Samsung Store!"

  Example: Find by seller
    Given I am on the Ebay Advanced search page
    And I click 'By seller' link
    And I click 'Only show items from' checkbox
    And I enter "Samsung" in the seller name field
    And I click 'Sellers with eBay stores' radiobutton
    And I click on the "bottom" search button
    Then I should see "Samsung"

  Example: Search tips link checking
    Given I am on the Ebay Advanced search page
    And I click hint search tips
    Then I should see "General search tips"


