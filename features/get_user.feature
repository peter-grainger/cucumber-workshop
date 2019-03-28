Feature: Get user by ID
  Background: Set up database
    Given the user has been stored in the database

  Scenario: Successfully retrieved a user by ID
    Given the user id is the correct format
    When a request has been made to get a user
    Then OK is returned
      And the response body contains the user

  Scenario: Failed to retrieve a user due to having the wrong id
    Given the wrong id is used for a user
    When a request has been made to get a user
    Then not found is returned
      And the response body is empty

  Scenario Outline: Failed to retrieve a user due to incorrect parameters
    Given <token> is used in the request
    When a request has been made to get a user
    Then bad request is returned
      And the response body is empty
    Examples:
      | token                   |
      | incorrect user token    |
      | incorrect system token  |
      | valid permissions token |
