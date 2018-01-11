
Feature: Select Forum and Switch Between Forums
         This feature will allow 1 user to access multiple forums

  Scenario: Select Forum
    Given the User is Registered
        And the User is Registered with Multiple Forums
    When the User logs into their account
    Then the User <Forum Selection Popup> should show
    And the forums should be displayed in a dropdown <list>
      |The User is associated with the following Forums:|
      | agilquest       | 
      | Energy Capital  |
      | Co-Star Inc.    | 
      | XYZ Enterprises |
    And the top forum should be selected by default
    And public forums will be listed first
    And the Popup will have a OK button
    And the Popup will have a Cancel button
    Then the User will Select a Forum
    Then the User will be sent to the selected forum
        And the User will login to the page
    
    @profile
    Scenario: Switch Forum
      Given the User is Registered
        And the User is Registered with Multiple Forums
      When the User selects a forum
      Then the profile dropdown for the User should <switch options>
        |Sytira Saunders|
        | My Profile    |
        | My Reservations & Requests    |
        | Switch Forum  |
        | Logout        |
    
    Scenario: Switch Forum from Profile Dropdown
      Given the the profile dropdown for the User has <switch options>
      When the User clicks <Switch Forum>
      Then the User <Forum Selection Popup> should show
        And the User can Select a Forum
        And the User can click the OK Button
        And the User will go to the selected forum
      Then the User can click the Cancel Button
        And the <Forum Selection Popup> should close
        And the User will stay in the current forum

