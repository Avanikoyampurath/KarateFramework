Feature: Validate put method

  Background:
    * def body = read("classpath://json//CreateEmployee.json")
    * def updated_body = read("classpath://json//UpdateEmployee.json")
    * def responseOfCreateEmployee = call read("classpath://feature/CreateEmployee.feature")

  Scenario: verify user can update employee by id
    Given url host
    And path '/create'
    When header Content-Type = "application/json"
    And header Accept = "application/json"
    And request body
    When method post
    Then status 200
    When path "/update/"+responseOfCreateEmployee.response.id
    When header Content-Type = "application/json"
    And header Accept = "application/json"
    And request updated_body
    When method put
    Then status 200
    And print response