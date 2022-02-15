Feature: Account types
  @wip
  Scenario: Driver user
    Given the user logged in as "driver"
    When the user navigates to "Activities" "Calendar Events"
    Then the title contains "Calendar Events - Activities"
  @wip @smoke
  Scenario: Sales manager user
    Given the user logged in as "salesmanager"
    When the user navigates to "Customers" "Accounts"
    Then the title contains "Accounts - Customers"
  @wip @smoke
  Scenario: Store manager user
    Given the user logged in as "storemanager"
    When the user navigates to "Customers" "Contacts"
    Then the title contains "Contacts - Customers"

  @hw
  Scenario Outline: Login with different accounts <userType>
    Given the user logged in as "<userType>"
    When the user navigates to "<tab>" "<module>"
    Then the title contains "<title>"

    Examples:
      | userType     | tab        | module          | title                                                              |
      | driver       | Fleet      | Vehicles Model  | Dashboard                                                          |
      | driver       | Customers  | Contacts        | Contacts - Customers                                               |
      | driver       | Activities | Calendar Events | Calendar Events - Activities                                       |
      | driver       | System     | Jobs            | Jobs - System                                                      |
      | salesmanager | Fleet      | Vehicles        | All - Car - Entities - System - Car - Entities - System            |
      | salesmanager | Fleet      | Vehicles Model  | All - Vehicles Model - Entities - System - Car - Entities - System |
      | salesmanager | Customers  | Accounts        | All - Accounts - Customers                                         |
      | salesmanager | Customers  | Contacts        | All - Contacts - Customers                                         |
      | salesmanager | Activities | Calendar Events | All - Calendar Events - Activities                                 |
      | salesmanager | System     | Jobs            | Dashboard                                                          |
      | storemanager | Fleet      | Vehicles        | All - Car - Entities - System - Car - Entities - System            |
      | storemanager | Fleet      | Vehicles Model  | All - Vehicles Model - Entities - System - Car - Entities - System |
      | storemanager | Customers  | Accounts        | All - Accounts - Customers                                         |
      | storemanager | Customers  | Contacts        | All - Contacts - Customers                                         |
      | storemanager | Activities | Calendar Events | All - Calendar Events - Activities                                 |
      | storemanager | System     | Jobs            | Dashboard                                                          |
      | storemanager | System     | Menus           | Dashboard                                                          |


  Scenario Outline: Different user types
    Given the user logged in as "<userType>"

    Examples:
      | userType     |
      | driver       |
      | admin        |
      | storemanager |
      | salesmanager |