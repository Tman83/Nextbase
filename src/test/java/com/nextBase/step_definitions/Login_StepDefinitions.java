package com.nextBase.step_definitions;

import com.nextBase.pages.LoginPage;
import com.nextBase.utilities.Driver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class Login_StepDefinitions {

    LoginPage LoginPage = new LoginPage();

    @Given("user is on the login page")
    public void user_is_on_the_login_page() {
        Driver.getDriver().get("https://login.nextbasecrm.com");
       // Driver.getDriver().get(ConfigurationReader.getProperty("web.table.url"));
    }

    @When("user enters username {string}")
    public void user_enters_username(String string) {
        LoginPage.usernameInput.sendKeys(string);
    }
    @When("user enters password {string}")
    public void user_enters_password(String string) {
       LoginPage.passwordInput.sendKeys(string);
    }
    @When("user clicks to login button")
    public void user_clicks_to_login_button() {
        LoginPage.loginButton.click();
    }
    @Then("user should see the dashboard")
    public void user_should_see_the_dashboard(String string) {
        Assert.assertTrue(Driver.getDriver().getTitle().contains(string));
    }

}
