@CalSubtraction
Feature: To test the functionality on Subtraction on a windows application standard calculator.

  Scenario: 1 To Test the functionality of subtraction with same value
    Given the user opens Windows Calculator app
    When the user clicks on 9 number
    And the user clicks on - operation
    And the user clicks on 9 number
    And the user clicks on = operation
    Then the result should be 0

  Scenario: 2 To test the functionality of subtraction with different numbers
    Given the user opens Windows Calculator app
    When the user clicks on 9 number
    And the user clicks on - operation
    And the user clicks on 5 number
    And the user clicks on = operation
    Then the result should be 4

  Scenario: 3 To test the functionality of subtraction highest from lowest
    Given the user opens Windows Calculator app
    When the user clicks on 5 number
    And the user clicks on - operation
    And the user clicks on 9 number
    And the user clicks on = operation
    Then the result should be -4

  Scenario: 4 To Test the functionality of subtraction zero from a negative value
    Given the user opens Windows Calculator app
    When the user clicks on - operation
    And the user clicks on 9 number
    And the user clicks on - operation
    And the user clicks on 0 number
    And the user clicks on = operation
    Then the result should be -9

  Scenario: 5 To Test the functionality of subtraction zero from a positive integer
    Given the user opens Windows Calculator app
    When the user clicks on 9 number
    And the user clicks on - operation
    And the user clicks on 0 number
    And the user clicks on = operation
    Then the result should be 9

  Scenario: 6 To Test the functionality of subtraction decimal value from a positive value
    Given the user opens Windows Calculator app
    When the user clicks on 3 number
    And the user clicks on - operation
    And the user clicks on 5 number
    And the user clicks on . operation
    And the user clicks on 0 number
    And the user clicks on 5 number
    And the user clicks on = operation
    Then the result should be -2.05

  Scenario: 7 To Test the functionality of subtraction decimal value from a highest positive value
    Given the user opens Windows Calculator app
    When the user clicks on 9 number
    And the user clicks on - operation
    And the user clicks on 5 number
    And the user clicks on . operation
    And the user clicks on 0 number
    And the user clicks on 5 number
    And the user clicks on = operation
    Then the result should be 3.95

  Scenario: 8 To Test the functionality of subtraction integer from a decimal value
    Given the user opens Windows Calculator app
    When the user clicks on 1 number
    And the user clicks on . operation
    And the user clicks on 5 number
    And the user clicks on - operation
    And the user clicks on 9 number
    And the user clicks on = operation
    Then the result should be -7.5

  Scenario: 9 To Test the functionality of subtraction integer from a highest decimal value
    Given the user opens Windows Calculator app
    When the user clicks on 9 number
    And the user clicks on . operation
    And the user clicks on 5 number
    And the user clicks on - operation
    And the user clicks on 9 number
    And the user clicks on = operation
    Then the result should be 0.5

  Scenario: 10 To Test the functionality of subtraction decimal value from a negative value
    Given the user opens Windows Calculator app
    When the user clicks on - operation
    And the user clicks on 9 number
    And the user clicks on - operation
    And the user clicks on 1 number
    And the user clicks on . operation
    And the user clicks on 5 number
    And the user clicks on = operation
    Then the result should be -10.5

  Scenario: 11 To Test the functionality of subtraction integer value with the previous case
    Given the user opens Windows Calculator app
    And the user clicks on - operation
    And the user clicks on 9 number
    And the user clicks on - operation
    And the user clicks on 1 number
    And the user clicks on . operation
    And the user clicks on 5 number
    And the user clicks on = operation
    Then the result should be -10.5
    When the user clicks on - operation
    And the user clicks on 9 number
    And the user clicks on = operation
    Then the result should be -19.5

  Scenario: 12 To Test the functionality of subtraction two decimal values which results integer
    Given the user opens Windows Calculator app
    When the user clicks on 4 number
    And the user clicks on . operation
    And the user clicks on 5 number
    And the user clicks on - operation
    And the user clicks on 1 number
    And the user clicks on . operation
    And the user clicks on 5 number
    And the user clicks on = operation
    Then the result should be 3

  Scenario: 13 To Test the functionality of subtraction two decimal values which results decimal
    Given the user opens Windows Calculator app
    When the user clicks on 6 number
    And the user clicks on . operation
    And the user clicks on 5 number
    And the user clicks on - operation
    And the user clicks on 3 number
    And the user clicks on . operation
    And the user clicks on 9 number
    And the user clicks on = operation
    Then the result should be 2.6

  Scenario: 14 To Test the functionality of subtraction two decimal values which results zero
    Given the user opens Windows Calculator app
    When the user clicks on 6 number
    And the user clicks on . operation
    And the user clicks on 5 number
    And the user clicks on - operation
    And the user clicks on 6 number
    And the user clicks on . operation
    And the user clicks on 5 number
    And the user clicks on = operation
    Then the result should be 0

  Scenario: 15 To Test the functionality of subtraction two max decimal values
    Given the user opens Windows Calculator app
    And the user enters 9.234567887654321
    And the user clicks on - operation
    When the user enters 2.234567887654321
    And the user clicks on = operation
    Then the result should be 7

  Scenario: 16 To Test the functionality of subtraction two max integer values
    Given the user opens Windows Calculator app
    And the user enters 8765432187654321
    And the user clicks on - operation
    When the user enters 1234567812345678
    And the user clicks on = operation
    Then the result should be 7,53,08,64,37,53,08,643

  Scenario: 17 To Test the functionality of subtraction two max float values with more decimals
    Given the user opens Windows Calculator app
    And the user enters 900.2345678
    And the user clicks on - operation
    When the user enters 200.23456788765
    And the user clicks on = operation
    Then the result should be 699.99999991235


