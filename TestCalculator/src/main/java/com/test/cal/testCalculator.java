package com.test.cal;

import io.appium.java_client.windows.WindowsDriver;

import io.cucumber.java.After;
import org.junit.Assert;
import org.junit.Before;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.remote.DesiredCapabilities;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

import static java.lang.Integer.parseInt;

public class testCalculator {

    public static WindowsDriver driver = null;
    public static WebElement CalculatorResult = null;

    public void setUp() {
        DesiredCapabilities cap = new DesiredCapabilities();
        cap.setCapability("app", "Microsoft.WindowsCalculator_8wekyb3d8bbwe!App");
        // cap.setCapability("app","C:\\Windows\\System32\\calc.exe");
        cap.setCapability("Platform", "Windows");
        cap.setCapability("DeviceName", "WindowsLap");

        try {
            driver = new WindowsDriver(new URL("http://127.0.0.1:4723"), cap);
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }

        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
    }

    public void Clear() {
        driver.findElementByName("Clear").click();
        Assert.assertEquals("0", _GetCalculatorResultText());
    }

    public void defaultValue() {
        Assert.assertEquals("0", _GetCalculatorResultText());
    }


    public String title() {
        String title = driver.findElementByAccessibilityId("Header").getText();
        System.out.println("The Title is :" + title);
        return title;
    }

    public void checkTitle(String expectedTitle) {

        Assert.assertEquals(expectedTitle, title());
    }

    public void clickNumbers(int number) {
        switch (number) {
            case 1:
                driver.findElementByName("One").click();
                break;
            case 2:
                driver.findElementByName("Two").click();
                break;
            case 3:
                driver.findElementByName("Three").click();
                break;
            case 4:
                driver.findElementByName("Four").click();
                break;
            case 5:
                driver.findElementByName("Five").click();
                break;
            case 6:
                driver.findElementByName("Six").click();
                break;
            case 7:
                driver.findElementByName("Seven").click();
                break;
            case 8:
                driver.findElementByName("Eight").click();
                break;
            case 9:
                driver.findElementByName("Nine").click();
                break;
            case 0:
                driver.findElementByName("Zero").click();
                break;

        }
    }

    public void clickOperators(String operator) {
        switch (operator) {
            case "+":
                driver.findElementByName("Plus").click();
                break;
            case "-":
                driver.findElementByName("Minus").click();
                break;
            case "*":
                driver.findElementByName("Multiply by").click();
                break;
            case "%":
                driver.findElementByName("Divide by").click();
                break;
            case "=":
                driver.findElementByName("Equals").click();
                break;
            case ".":
                driver.findElementByName("Decimal Separator").click();
                break;
        }

    }

    public void results(String result) {
        Assert.assertEquals(result, _GetCalculatorResultText());
    }


    protected String _GetCalculatorResultText() {
        // trim extra text and whitespace off of the display value
        String result = driver.findElementByAccessibilityId("CalculatorResults").getText();
        return result.replace("Display is", "").trim();
    }

    public void clickOnMenu() {
        driver.findElementByAccessibilityId("TogglePaneButton").click();

    }

    public void menuList(int number) {
        List<WebElement> listofelements = driver.findElementsByClassName("Microsoft.UI.Xaml.Controls.NavigationViewItem");
        System.out.println(listofelements.size());
        Assert.assertEquals(number, listofelements.size());
    }

    public void enterLargeValue(String value) {
        for (int i = 0; i < value.length(); i++) {
            char c = value.charAt(i);
            Boolean val = Character.isDigit(c);
            if (val) {
                int j = parseInt(String.valueOf(c));
                if (j <= 9) {
                    clickNumbers(j);
                }
            } else {
                driver.findElementByName("Decimal Separator").click();
            }
        }
    }

    public void tabs(String tabName){
        driver.findElementByName(tabName).click();
        String histroyTab = driver.findElementByName(tabName).getText();
        Assert.assertEquals(tabName,histroyTab);
    }

    public void textOnTabs(String Text){
        String value = driver.findElementByAccessibilityId("MemoryPaneEmpty").getText();
        Assert.assertEquals(value,Text);
    }

    public void backspace(){
        driver.findElementByAccessibilityId("backSpaceButton").click();
    }

    public void clear(){
        driver.findElementByAccessibilityId("clearButton").click();
    }

}

