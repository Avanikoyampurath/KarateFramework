Feature: Validate get method

  Background:
    * def responseOfCreateEmployee = call read("classpath://feature/CreateEmployee.feature")

  Scenario: verify user can get employee by id
    Given url host
    When path "/employee/"+responseOfCreateEmployee.response.id
    And method get
    Then status 200
    And print response