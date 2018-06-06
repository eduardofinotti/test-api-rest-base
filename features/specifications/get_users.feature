Feature: Get Users

As a customer
I want to be able to get users
Because I want to see who is registered

  Scenario: Get a list user
    Given I have the rote "/api/users?page=2"
    When I make a get in this rote
    Then return a response with a "200" response code
  
  Scenario: Get a sigle user
    Given I have the rote "/api/users/2"
    When I make a get in this rote
    Then return a response with a "200" response code
    And I get the user named "Janet"
    And I get the user with last name "Weaver"
    And I get the avatar user "https://s3.amazonaws.com/uifaces/faces/twitter/josephstein/128.jpg"

  # PS: When writing this scenario, 
  # it was not necessary to write any steps, 
  # because I am reusing all the code, only by parameters.
  Scenario: Get a nonexistent user
    Given I have the rote "/api/users/999"
    When I make a get in this rote
    Then return a response with a "404" response code