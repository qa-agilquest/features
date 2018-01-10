Feature: Digital Signage - Windows Native Application

Scenario: Use Digital Sign to Create a Reservation
  Given A User wants to create a reservation
    And the User is Registered
    And the User uses a digital sign
  When the user clicks reserve
  Then The reservation should be made
  
Scenario: Use Digital Sign to Edit a Reservation
  Given A User wants to edit a reservation
    And the User is Registered
    And the User uses a digital sign
  When the user clicks edit
  Then a new screen should show that allows the user to edit the reservation
  
