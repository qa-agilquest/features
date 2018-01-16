
Feature:google authentication
  special ssl certificate

  Scenario: login
    Given a user has a google account
    When they login to agiquest
    Then we allow it
