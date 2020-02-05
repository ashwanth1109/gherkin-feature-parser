@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30259
@User
Feature: User - Edit - Legacy - Type - Edit

  Scenario: User - Edit - Legacy - Type - Edit other users
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name  | Email                    | Account Type | Status   | Password |
      | Test UserA | testusera@manuscript.com | Normal       | Inactive | 123123   |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The user clicks the "Avatar" icon for the "Test UserA" user in the "Manage Users" page
    When The user clicks the "Legacy Settings" link in the "User Options" page
    And The user enters the user options details in the "User Options" page:
      | Type          |
      | Administrator |
    And The user clicks the "OK" button in the "User Options" page
    And The user logs out
    And The user is redirected to the "Login" page
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email                    | Password |
      | testusera@manuscript.com | 123123   |
    Then The user logs in
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    And The following user options details are listed in the "User Options" page:
      | Type          |
      | Administrator |
