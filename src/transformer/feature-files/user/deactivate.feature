@NotAutomated
@JIRA-Key-MANUSCRIPT-29169
@User
Feature: User - Deactivate

  Background:
    Given The user is logged in as Administrator
    And The following users exist:
      | Full name | Email         | Account Type | Status | Password |
      | Lion King | lk@jungle.com | Normal       | Active | lking    |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The "Manage Users" page is shown

  Scenario: Administrator can deactivate an active user: Edit user
    And The user clicks the "Edit" button for the "Lion King" user row in the "Normal Users" table in the "Manage Users" page
    And The "User Options" page is shown
    When The user enters the user options details in the "User Options" page:
      | Status   |
      | Inactive |
    And The user logs out
    And The user is redirected to the "Login" page
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email         | Password |
      | lk@jungle.com | lking    |
    Then The "Incorrect password or username" error message is shown in the "Login" page

  Scenario: Administrator can deactivate an active user: "Deactivate" link
    When The user clicks the "Deactivate" link for the "Lion King" user row in the "Normal Users" table in the "Manage Users" page
    Then The following users are listed in the "Normal Users" table in the "Manage Users" page in the following order:
      | Full name | Email |
    And The user clicks the "Inactive" tab in the "Manage Users" page
    And The following users are listed in the "Normal Users" table in the "Manage Users" page in the following order:
      | Full name | Email         |
      | Lion King | lk@jungle.com |
    And The user logs out
    And The user is redirected to the "Login" page
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email         | Password |
      | lk@jungle.com | lking    |
    And The "Incorrect password or username" error message is shown in the "Login" page
