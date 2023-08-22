Feature: Google Search
  As a user
  I want to perform a search on Google
  So that I can find relevant information

  Scenario: Performing a basic search
    Given I am on the Google search page
    When I enter "Cucumber with Selenium" into the search box
    And I click the search button
    Then I should see search results related to "Cucumber with Selenium"