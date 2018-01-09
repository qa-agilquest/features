Feature: We should add a new feature every Tuesday
  As the Manager
  When the date is Tuesday
  I expect to see a new feature
  
  @promotions
  Scenario: Add a new feature on Tuesday
    Given accessing board
    When the date is Tuesday
    Then I expect to see a new feature added
    And I expect the feature to be at the top of the list
