@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29829
@User
Feature: User - Edit - Legacy - Full Name - Self

  Scenario: Administrators can edit their names in legacy options
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
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
