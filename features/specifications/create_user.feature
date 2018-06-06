Feature: Create Users

As a customer
I want to be able to create users
Because I want to save your data

@create
  Scenario Outline: Create user
    Given I have the rote "/api/users"
    When I make a post in this rote with attribute name <name> and atribute job <job>
    Then it should return a response with a "201" response code
    And it should return the attribute name with <name>
    And it should return the attribute job with <job>
    And it should return the attribute "id" not equal zero
    And it should return the attribute "createAt" not equal zero
  Examples: 
  | name | job | 
  | "Eduardo Finotti"  | "QA Tester" |