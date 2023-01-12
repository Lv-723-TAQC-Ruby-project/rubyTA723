Feature: Fail registration

  Scenario: I want to register without filling last name
    Given I open the eBay login page
    When I open link create an account
    And I fill all fields except last name
    Then I expect to see message 'Please enter your last name'

  Scenario: I want to register with invalid email
      Given I open registration page
      And I enter all fields I set invalid email
      Then I expect to see message 'Email address is invalid. Please enter a valid email address.'