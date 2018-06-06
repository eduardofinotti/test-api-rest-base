Feature: Create Users

As a customer
I want to be able to create users
Because I want to save your data

  Scenario Outline: Create user
    Given I have the rote "/api/users"
    When I make a post in this rote with attribute name <name> and atribute job <job>
    Then return a response with a <code> response code
    And return the attribute <attr_name> with <name>
    And return the attribute <attr_job> with <job>
    And return the attribute <attr_id> not equal zero
    And return the attribute <attr_createAt> not equal zero
  Examples: 
  |        name        |     job     |  code  | attr_name | attr_job | attr_id | attr_createAt | 
  | "Eduardo Finotti"  | "QA Tester" |  "201" |   "name"  |  "job"   |  "id"   |   "createAt"  |