package com.test.cal;


import io.cucumber.java.After;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class MyStepdefs extends testCalculator{

    @Given("the user opens Windows Calculator app")
    public void theUserOpensWindowsApplications() {
        setUp();
        System.out.println("Calculator has been launched");
    }

    @When("the user clicks on (.*) number$")
    public void theUserClicksOnNumber(int number) {
        clickNumbers(number);
    }

    @When("the user clicks on (.*) operation$")
    public void theUserClicksOnOperation(String operator) {
        clickOperators(operator);
    }

    @Then("the result should be (.*)$")
    public void theResultShouldBe(String expectedValue) {
        results(expectedValue);
    }



    @When("the calculators opens and gets the title of the application")
    public void theCalculatorsOpensAndGetsTheTitleOfTheApplication() {
        title();
    }

    @Then("the title of the app should be (.*)$")
    public void theTitleOfTheAppShouldBe(String expectedTitle) {
        checkTitle(expectedTitle);
    }

    @And("the default value should be 0")
    public void theDefaultValueShouldBe() {
        defaultValue();
    }

    @When("the user clicks on menu options")
    public void theUserClicksOnMenuOptions() {
        clickOnMenu();
    }



    @Then("the calculator should display (.*) items$")
    public void theCalculatorShouldDisplayItems(int number) {
        menuList(number);
    }

    @When("the user enters (.*)$")
    public void theUserEnters(String value) {
        enterLargeValue(value);
    }

    @And("the calculator by defaults on (.*)$")
    public void theCalculatorByDefaultsOn(String tab) {
        tabs(tab);
    }

    @When("the user clicks on tabs (.*)$")
    public void theUserClicksOnTabs(String memoryTab) {
        tabs(memoryTab);
    }

    @Then("it should display the test (.*)$")
    public void itShouldDisplayTheTest(String Text) {
        textOnTabs(Text);
    }

    @When("the clicks backspace")
    public void theClicksBackspace() {
        backspace();
    }

    @Then("one digit at once it should get deleted and the value should be just (.*)$")
    public void oneDigitAtOnceItShouldGetDeletedAndTheValueShouldBeJust(String expectedValue) {
        results(expectedValue);
    }

    @When("the user clicks c")
    public void theUserClicksC() {
        clear();
    }

    @Then("all the entered values should be deleted")
    public void allTheEnteredValuesShouldBeDeleted() {
        System.out.println("The values are cleared off");
    }

    @When("the user closes the window")
    public void theUserClosesTheWindow() {
        TearDown();
    }


    @After
    public static void TearDown()
    {
        CalculatorResult = null;
        if (driver != null) {
            driver.quit();
        }
        driver = null;
    }

    @Then("the calculator application will be closed")
    public void theCalculatorApplicationWillBeClosed() {
        System.out.println("Calculator application is Terminated");
    }
}
