@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30279
@User
Feature: User - Edit - Legacy - Full Name - Others

  Scenario: Administrators can edit the names of other users in legacy options
    Given The user is logged in as Administrator
    And The following users exist:
      | Full name | Account Type  | Password |
      | Lion King | Administrator | 123123   |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The "Manage Users" page is shown
    And The user clicks the "Edit" button for the "Lion King" user row in the "Administrators" table in the "Manage Users" page
    And The "User Options" page is shown
    And The user clicks the "Legacy Settings" link in the "User Options" page
    And The user enters the user options details in the "User Options" page:
      | Full Name       |
      | Captain Chicken |
    When The user clicks the "OK" button in the "User Options" page
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The "Manage Users" page is shown
    Then The following users are listed in the "Administrators" table in the "Manage Users" page:
      | Full Name       |
      | Captain Chicken |
