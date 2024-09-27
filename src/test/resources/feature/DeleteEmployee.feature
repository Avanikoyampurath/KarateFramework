Feature: Validate delete method

  Background:
    * def responseOfCreateEmployee = call read("classpath://feature/CreateEmployee.feature")

  Scenario: verify user can delete employee by id
    Given url host
    When path "/delete/"+responseOfCreateEmployee.response.id
    And method delete
    Then status 200
    And print response