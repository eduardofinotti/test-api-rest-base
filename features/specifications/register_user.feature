Feature: Register User

As a customer
I want to be able to register users
Because I want to login on application

Background: rote
    Given I have the rote "/api/register"

  Scenario Outline: Register user with sucess
    When I make a post in this rote with atribute email <email> and atribute password <password>
    Then return a response with a "201" response code
    And return the attribute "token" not equal zero
  Examples: 
  |        email       | password | 
  | "eduardo@test.com" | "pass123" |

  Scenario Outline: Register user with invalid data 
    When I make a post in this rote with atribute email <email> and atribute password <password>
    Then return a response with a <attr_code> response code
    And return the attribute <attr_error> with <error>
  Examples: 
  |       email        |  password |             error           |  attr_code | attr_error | 
  |        ""          | "pass123" | "Missing email or username" |    "400"   |   "error"  |
  | "eduardo@test.com" |     ""    |      "Missing password"     |    "400"   |   "error"  |
  |        ""          |     ""    | "Missing email or username" |    "400"   |   "error"  |