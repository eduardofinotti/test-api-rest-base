Feature: Create Users

As a customer
I want to be able to create users
Because I want to save your data

  Scenario Outline: Create user
    Given I have the rote "/api/users"
    When I make a post in this rote with atribute name <name> and atribute job <job>
    Then it should return a response with a "201" response code
    And it should return the atributes name with <name>
    And it should return the atributes job with <job>
    And it should return the atributes id not zero
    And it should return the atributes createAtnot zero
  Examples: 
  | name | job | 
  | "Eduardo Finotti"  | "QA Tester" |