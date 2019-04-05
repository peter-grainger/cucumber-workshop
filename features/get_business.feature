Feature: Get A Business By ID
  Background: A User Is Added To The Database
    Given a user is in the database

  Scenario: Success When A User Is In The Database
    When a request is made to get a user
    Then OK is returned
      And the response body contains a user

  Scenario Outline: Failure When The UserID Is Incorrect
    Given the <Parameter> is foobar
    When a request is made to get a user
    Then not found is returned
    Examples:
      | Parameter  |
      | UserID     |
      | BusinessID |