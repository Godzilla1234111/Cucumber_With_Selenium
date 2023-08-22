import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import io.cucumber.java.en.*;

public class StepDefinitions {

    WebDriver driver = new ChromeDriver();

    @Given("I am on the Google search page")
    public void iAmOnGoogleSearchPage() {
        driver.get("https://www.google.com");
    }

    @When("I enter {string} into the search box")
    public void iEnterTextIntoSearchBox(String searchText) {
        driver.findElement(By.name("q")).sendKeys(searchText);
    }

    @And("I click the search button")
    public void iClickSearchButton() {
        driver.findElement(By.name("btnK")).click();
    }

    @Then("I should see search results related to {string}")
    public void iSeeSearchResults(String expectedText) {
        // Add assertions to verify search results
        // For example: Assert.assertTrue(driver.getTitle().contains(expectedText));
        driver.quit();
    }
}

