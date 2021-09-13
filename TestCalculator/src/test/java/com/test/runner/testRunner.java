package com.test.runner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = {"src\\test\\resources\\features\\"},
        glue = {"com.test.cal"},
        monochrome = true,
        tags = "@CalAddition",
        plugin = {"pretty","json:target/jsonReport/cucumber.json"}
)
public class testRunner {
}
