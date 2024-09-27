Feature: Validate post method

  Background:
    * def body = read("classpath://json//CreateEmployee.json")

  Scenario: verify user can add employee
    Given url host
    And path '/create'
    When header Content-Type = "application/json"
    And header Accept = "application/json"
    And request body
    When method post
    Then status 200
    And print response