@NotAutomated
@JIRA-Key-MANUSCRIPT-29354
@User
Feature: User - Copy

  Scenario: Administrator can copy an existing normal user to create a new user
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name  | Email                | Account Type  | Status | Can Edit | Can Copy | Can Deactivate | Active On Kiln | Active on FogBugz |
      | Test UserA | UserA@manuscript.com | Normal        | Active | true     | true     | true           | true           | true              |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The "Manage Users" page is shown
    When The user clicks the "Copy" link for the "Test UserA" user row in the "Normal Users" table in the "Manage Users" page
    And The "Copy User" page is shown
    And The user enters the following details in the "Email addresses/names" section in the "Copy User" page:
      | Email addresses/names            |
      | UserB@manuscript.com,Test UserB  |
    And The user clicks the "OK" button in the "Copy User" page
    Then The "Manage Users" page is shown
    And The following users are listed in the "Normal Users" table in the "Manage Users" page:
      | Full Name  | Email                |  Status | Can Edit | Can Copy | Can Deactivate | Active On Kiln | Active on FogBugz |
      | Test UserA | UserA@manuscript.com |  Active | true     | true     | true           | true           | true              |
      | Test UserB | UserB@manuscript.com |  Active | true     | true     | true           | true           | true              |
