@JIRA-Key-MANUSCRIPT-29028
@User
Feature: User - Add new - Validate

  Scenario: Add new user: Validate "Full name"
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The user clicks the "Add New User" button in the "Users" page
    When The user enters the user details in the "Add New User" dialog:
      | Full Name | Email              | Active on FogBugz | Active on Kiln | Role   |
      |           | ticket@factory.com | true              | true           | Normal |
    Then The "This field is required" error message is shown for the "Full Name" field in the "Add New User" dialog
    And The "Add User" button is disabled in the "Add New User" dialog

  Scenario Outline: Add new user: Validate "Email"
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The user clicks the "Add New User" button in the "Users" page
    When The user enters the user details in the "Add New User" dialog:
      | Full Name      | Email   | Active on FogBugz | Active on Kiln | Role   |
      | Ticket Factory | <Email> | true              | true           | Normal |
    Then The "<Error Message>" error message is shown for the "Email" field in the "Add New User" dialog
    And The "Add User" button is disabled in the "Add New User" dialog
    Examples:
      | Email              | Error Message              |
      |                    | This field is required     |
      | ticket             | Please enter a valid email |
      | ticket@            | Please enter a valid email |
      | ticket@domain.     | Please enter a valid email |
      | ticket@domain.     | Please enter a valid email |
      | .invalid@email.box | Please enter a valid email |
