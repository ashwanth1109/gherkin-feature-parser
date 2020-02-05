@NotAutomated
@JIRA-Key-MANUSCRIPT-30271
@User
Feature: User - Edit - Legacy - Email Address - Others

  Scenario: Administrators can edit other users email addresses
    Given The user is logged in as Administrator
    And The following users exist:
      | Full name | Password |
      | Lion King | 123123   |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The "Manage Users" page is shown
    And The user clicks the "Edit" button for the "Lion King" user row in the "Administrators" table in the "Manage Users" page
    And The "User Options" page is shown
    And The user clicks the "Legacy Settings" link in the "User Options" page
    When The user enters the user options details in the "User Options" page:
      | Email Address     |
      | noone@nowhere.com |
    And The user logs out
    And The user enters the credentials in the "Login" page:
      | Email             | Password |
      | noone@nowhere.com | 123123   |
    And The user clicks the "Log In" button in the "Login" page
    Then The user logs in
