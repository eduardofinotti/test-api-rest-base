Feature: Login

As a customer
I want to be able to login
Because I want to login on application

# For this test it was not necessary to create any .rb file, 
# because it was reused the same code that makes the request for "/ api / register", 
# I just changed the route, but the parameters are the same. 
# But it's in a different feture, because it's another functionality.

  Scenario Outline: Login with sucess
    Given I have the rote "/api/login"
    When I make a post in this rote with atribute email <email> and atribute password <password>
    Then return a response with a "200" response code
    And return the attribute "token" not equal zero
  Examples: 
  |        email       | password | 
  | "eduardo@test.com" | "pass123" |

  Scenario Outline: Login with invalid data 
    Given I have the rote "/api/login"
    When I make a post in this rote with atribute email <email> and atribute password <password>
    Then return a response with a <attr_code> response code
    And return the attribute <attr_error> with <error>
  Examples: 
  |       email        |  password |             error           |  attr_code | attr_error | 
  |        ""          | "pass123" | "Missing email or username" |    "400"   |   "error"  |
  | "eduardo@test.com" |     ""    |      "Missing password"     |    "400"   |   "error"  |
  |        ""          |     ""    | "Missing email or username" |    "400"   |   "error"  |