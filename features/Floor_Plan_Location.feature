
Feature:Floor Plan Location
  The location of EXHAUSTIBLE Assets within a building
  The availability of EXHAUSTIBLE Assets during a specific Date/Time range queried.  
@floorPlanConfiguration    
  Scenario: Upload Floor Plan
    Given a User want to Upload a Floor Plan
    When the Location is selected 
    Then the User needs to identify the shape
        And the User needs to identify the size
        And the User needs to identify the color
        And the User needs to identify the transparency

  Scenario: Altering Floor Plan Settings
    Given a User wants to change Floor Plan Settings
    When the User access Settings
        And the User accesses Assets
        And the User accesses Manage Asset Details
        And the User accesses Floor Plans Page
    Then the User can Change the Floor Plan's Location
    
    