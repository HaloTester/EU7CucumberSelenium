Feature: Login as different users
  @login
  Scenario: login as a sales manager
    Given the user is on the login page
    When the user logs in using "salesmanager110" and "UserUser123"
    Then the user should be able to login
    And the title contains "Dashboard"
