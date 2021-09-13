@CalAddition
Feature: To test the functionality on Additions on a windows application standard calculator.

  Scenario: 1 To test Addition functionality on the calculator
    Given the user opens Windows Calculator app
    When the user clicks on 9 number
    And the user clicks on + operation
    And the user clicks on 9 number
    And the user clicks on = operation
    Then the result should be 18

  Scenario: 2 To test the addition functionality with more than two values
    Given the user opens Windows Calculator app
    When the user clicks on 1 number
    And the user clicks on + operation
    And the user clicks on 2 number
    And the user clicks on + operation
    And the user clicks on 4 number
    And the user clicks on = operation
    Then the result should be 7

  Scenario: 3 To test the addition functionality with one positive integer value and a positive decimal value
    Given the user opens Windows Calculator app
    When the user clicks on 1 number
    And the user clicks on + operation
    And the user clicks on 2 number
    And the user clicks on . operation
    And the user clicks on 4 number
    And the user clicks on = operation
    Then the result should be 3.4

  Scenario: 4 To test the addition functionality with one negative integer value and a positive decimal value
    Given the user opens Windows Calculator app
    When the user clicks on - operation
    And the user clicks on 1 number
    And the user clicks on + operation
    And the user clicks on 2 number
    And the user clicks on . operation
    And the user clicks on 4 number
    And the user clicks on = operation
    Then the result should be 1.4

  Scenario: 5 To test the addition functionality with one negative high integer value and a positive decimal value
    Given the user opens Windows Calculator app
    When the user clicks on - operation
    And the user clicks on 6 number
    And the user clicks on + operation
    And the user clicks on 3 number
    And the user clicks on . operation
    And the user clicks on 3 number
    And the user clicks on = operation
    Then the result should be -2.7

  Scenario: 6 To test the addition functionality with a positive decimal value and one integer value
    Given the user opens Windows Calculator app
    When the user clicks on 2 number
    And the user clicks on . operation
    And the user clicks on 4 number
    And the user clicks on + operation
    And the user clicks on 1 number
    And the user clicks on = operation
    Then the result should be 3.4


  Scenario: 7 To test the addition functionality with two positive decimal values
    Given the user opens Windows Calculator app
    When the user clicks on 2 number
    And the user clicks on . operation
    And the user clicks on 4 number
    And the user clicks on + operation
    And the user clicks on 1 number
    And the user clicks on . operation
    And the user clicks on 1 number
    And the user clicks on = operation
    Then the result should be 3.5

  Scenario: 8 To test Addition functionality with positive Integer and zero
    Given the user opens Windows Calculator app
    When the user clicks on 9 number
    And the user clicks on + operation
    And the user clicks on 0 number
    And the user clicks on = operation
    Then the result should be 9

  Scenario: 9 To test Addition functionality with negative Integer and zero
    Given the user opens Windows Calculator app
    When the user clicks on - operation
    And the user clicks on 9 number
    And the user clicks on + operation
    And the user clicks on 0 number
    And the user clicks on = operation
    Then the result should be -9

    Scenario: 10 To test Addition functionality with two large positive integers
      Given the user opens Windows Calculator app
      When the user enters 1234567812345678
      And the user clicks on + operation
     And the user enters 8765432187654321
      And the user clicks on = operation
      Then the result should be 9,99,99,99,99,99,99,999


  Scenario: 11 To test functionality of addition and substation in the same cycle
    Given the user opens Windows Calculator app
    When the user clicks on 5 number
    And the user clicks on + operation
    And the user clicks on 9 number
    And the user clicks on - operation
    And the user clicks on 9 number
    And the user clicks on = operation
    Then the result should be 5

  Scenario: 12 To test the addition functionality with two values with addition and substation and then and add a floting point
    Given the user opens Windows Calculator app
    When the user clicks on 6 number
    And the user clicks on - operation
    And the user clicks on 8 number
    And the user clicks on = operation
    Then the result should be -2
    And the user clicks on + operation
    And the user clicks on 5 number
    And the user clicks on . operation
    And the user clicks on 6 number
    And the user clicks on = operation
    Then the result should be 3.6

  Scenario: 13 To test the addition functionality with two values with addition and substation and then and add a floting point
    Given the user opens Windows Calculator app
    When the user clicks on 2 number
    And the user clicks on + operation
    And the user clicks on 8 number
    And the user clicks on = operation
    Then the result should be 10
    And the user clicks on + operation
    And the user clicks on 5 number
    And the user clicks on . operation
    And the user clicks on 0 number
    And the user clicks on 0 number
    And the user clicks on 0 number
    And the user clicks on 0 number
    And the user clicks on 6 number
    And the user clicks on = operation
    Then the result should be 15.00006

  Scenario: 14 To test Addition functionality on Equal operator
    Given the user opens Windows Calculator app
    And the user clicks on 9 number
    And the user clicks on + operation
    And the user clicks on 9 number
    And the user clicks on = operation
    And the result should be 18
    When the user clicks on = operation
    Then the result should be 27

  Scenario: 15 To test Addition functionality with two decimal large points
    Given the user opens Windows Calculator app
    When the user enters 75.43926437800
    And the user clicks on + operation
    And the user enters 273884.438290
    And the user clicks on = operation
    Then the result should be 2,73,959.877554378

