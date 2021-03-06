
Feature:Floor Plan Location
  The location of EXHAUSTIBLE Assets within a building
  The availability of EXHAUSTIBLE Assets during a specific Date/Time range queried.  
@floorPlanConfiguration    
  Scenario: Upload Floor Plan
    Given a User want to Upload a Floor Plan
        And the Asset is Exhaustible
    When the Location is selected 
    Then the User needs to identify the shape
        And the User needs to identify the size
        And the User needs to identify the color
        And the User needs to identify the transparency

@UIAdditions
  Scenario: Altering Floor Plan Settings of a Exaustible Asset
    Given a User wants to change Floor Plan Settings
        And the Resourse is Exaustible
    When the User access Settings
        And the User accesses Assets
        And the User accesses Manage Asset Details
        And the User accesses Floor Plans Page
    Then the User can Change the Floor Plan's Location
        And the <Exhaustible Navigation Tree> should follow the example
        |Exhaustible Navigation Tree|
        |Details|
        |Hours of Operation|
        |Policies|
        |Price|
        |Floor Plan|
        |Asset Groups|
        |Photos|
        |Dynamic Assets|
        |Notifications|
        |_Calendar of Reservations_|
        |List of Reservations|

    Scenario: Altering Floor Plan Settings of a Non-Exaustible Asset
    Given a User wants to change Floor Plan Settings
        And the Resourse is not Exaustible
    When the User access Settings
        And the User accesses Assets
        And the User accesses Manage Asset Details
        And the User accesses Floor Plans Page
    Then the User can Change the Floor Plan's Location
        And the <Non Exhaustible Navigation Tree> should follow the example
        |Non Exhaustible Navigation Tree|
        |Details|
        |Hours of Operation|
        |Policies|
        |Price|
        |Asset Groups|
        |Photos|
        |Dynamic Assets|
        |Notifications|
        |_Calendar of Reservations_|
        |List of Reservations|
    
    Scenario: disabled floor plan link
      Given a User wants to change Floor Plan Settings
      When the Asset is associated with the Building Level
      Then the Floor Plan Link should be disabled
    
    Scenario: Floor Plan Page
      Given the User want to manage a Floor Plan
       When the User clicks on the Floor Plan Link
       Then the Floor Plan sub-tab of the Add an Asset page should open
        And the Page Header should say "Manage an Asset: Floor Plan"
        And the Body Text should say <Body Message>
        |body message|
        |A Floor Plan has been added to the Location with which this Asset is associated.  |
        |You may identify the location of this Asset on the Floor Plan by adding a shape to the Floor Plan.  |
        |Doing so, will allow Users to be able to find this Asset within a building. |
        |Additionally, when Users search for Assets they will be able to view the Floor Plan to determine whether or not this Asset is available to be reserved. |
        |To add a shape, simply click on the ‘Add’ button, below.  |
        |A green square will automatically be added to the page, just above the Floor Plan. |
        |Click on the green square to drag it to the appropriate place on the Floor Plan.|
        |You can change the shape, size and transparency of the shape by using the tool bar at the top of the Floor Plan or by right clicking on the shape, itself.|   
        | You can also remove the shape entirely, by clicking on the 'Remove' button.|
    
    Scenario: Manage Floor Plan Window
      Given the User Lands on the Floor Plan sub-tab
        And the user accesses this page through the Manage Asset Details Page
      When the Floor Plan is selected
      Then the Floor Level and the Floor Name should be displayed in the 'Floor Plan' text box, by default
        And the name of the exhaustible Asset that is being managed should be displayed in the Asset Table
        And a check mark should be displayed in the Select column of the Asset Table, next to the Asset Name
        And the Floor Plan that has been saved with the Floor Level: Node with which the Asset is associated should be displayed in the Floor Plan Window
        And the Floor Plan should be displayed so that the entire Floor Plan is displayed in the Floor Plan Window (i.e. Zoom to Page zoom level)
        And the Name of the Floor Plan should be displayed as a label, above the Floor Plan Window
        And the following Floor Plan Tool Bar elements should be enabled:
            |Zoom In|
            |Zoom Out|
            |Zoom to Page|
            |Hand icon|
        And the following Floor Plan Tool Bar elements should be disabled:
        |Shapes|
        |Transparency|
        And the following button should be disabled:
        |SAVE|
        