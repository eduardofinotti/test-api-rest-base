Feature: Register User

As a customer
I want to be able to register users
Because I want to login on application

  Scenario Outline: Register user with sucess
    Given I have the rote "/api/register"
    When I make a post in this rote with atribute email <email> and atribute password <password>
    Then it should return a response with a "201" response code
    And it should return the attribute "token" not equal zero
  Examples: 
  |        email       | password | 
  | "eduardo@test.com" | "pass123" |

  Scenario Outline: Register user with invalid data 
    Given I have the rote "/api/register"
    When I make a post in this rote with atribute email <email> and atribute password <password>
    Then it should return a response with a "400" response code
    And return attribute "error" with <error>
  Examples: 
  |       email        |  password |             error            |
  |        ""          | "pass123" | "Missing email or username" |
  | "eduardo@test.com" |     ""    |      "Missing password"     |
  |        ""          |     ""    | "Missing email or username" |