
Feature: Data Loading Spreadsheet
         
         As an Administrative User,
         I should be able to use a spreadsheet to upload my site's database schema,
         so that I can easily transition to the latest version of the platform.
  
  Scenario:
    Given that I'm using a older product
        And I am the LMU Client
        And I am a Administrative User
    When I want to transition to Agilquest
        And I want to import my database's schema
    Then I should be able to use a spreadsheet
