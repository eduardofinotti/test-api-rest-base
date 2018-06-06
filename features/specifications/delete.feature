Feature: Delete Users

As a customer
I want to be able to delete users
Because I want remove same users

  Scenario: Delete user
    Given I have the rote "/api/users/2"
    When I make a delete in this rote
    Then return a response with a "204" response code