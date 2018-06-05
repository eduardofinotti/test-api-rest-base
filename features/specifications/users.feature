Feature: Get Users

As a customer
I want to be able to get users
Because I want to see who is registered

  Scenario: Get a list user
    Given I have the rote "/api/users?page=2"
    When I make a get in this rote
    Then it should return a response with a "200" response code