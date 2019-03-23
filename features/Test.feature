Feature: Login Testing
  Scenario: Positive login
    Given I am able to access magento webpage
    And I am able to navigate onto login page
    When I update the username as "natarajan.ramanathan93@gmail.com"
    And I update the password as "Welcome123"
    And I click on login button
    Then I should get the the magento ID as "ID: MAG003417822"

  Scenario: Negative Login
    Given I am able to access magento webpage
    And I am able to navigate onto login page
    When I update the username as "nataraj.ramanathan@gmail.com"
    And I update the password as "Welcome123"
    And I click on login button
    Then I should get the error message as "Invalid login or password."