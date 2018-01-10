
Feature: HomePage Logos
  In order to make sure that when customers know that they are on the right home page,
  we need to make sure our logo is visible

  Scenario: A user navigates to the Home Page
    Given the Home Page is https://www.agilquest.com
    When the Home Page generates
    Then I expect to see our company's logo
