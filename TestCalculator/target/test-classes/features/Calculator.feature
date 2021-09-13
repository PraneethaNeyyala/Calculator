@Calculator
Feature: To verify the functionality of windows application calculator

  Scenario: 1 To test the calculator
    Given the user opens Windows Calculator app
    When the calculators opens and gets the title of the application
    Then the title of the app should be Standard
    And the default value should be 0

  Scenario: 2 To verify limit of digits allowed on the calculator
    Given the user opens Windows Calculator app
    When the user enters 123456789123456789
    Then the result should be 1,23,45,67,89,12,34,567

  Scenario: 3 To verify the list of options on the calculator
    Given the user opens Windows Calculator app
    When the user clicks on menu options
    Then the calculator should display 19 items

  Scenario: 4 To verify History and memory options
    Given the user opens Windows Calculator app
    And the calculator by defaults on History
    When the user clicks on tabs Memory
    Then it should display the test There’s nothing saved in your memory

  Scenario: 5 to verify backspace key
    Given the user opens Windows Calculator app
    And the user enters 7899090996565
    When the clicks backspace
    Then one digit at once it should get deleted and the value should be just 7,89,90,90,99,656

  Scenario: 6 To verify clear option
    Given the user opens Windows Calculator app
    And the user enters 56776787989
    When the user clicks c
    Then all the entered values should be deleted
    And the default value should be 0


  Scenario: 7 To test the open and close calculator
    Given the user opens Windows Calculator app
    And the user enters 56776787989
    When the user closes the window
    Then the calculator application will be closed