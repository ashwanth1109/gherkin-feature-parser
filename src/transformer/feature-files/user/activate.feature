@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30057
@User
Feature: User - Activate

  Background:
    Given The user is logged in as Administrator
    And The following users exist:
      | Full name       | Email                       | Account Type | Status   | Password |
      | User Under Test | user-under-test@fogbugz.com | Normal       | Inactive | test1234 |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The "Manage Users" page is shown
    And The user clicks the "Inactive" tab in the "Manage Users" page

  Scenario: Administrator can activate an inactive user: Edit user
    Given The user clicks the "Edit" button for the "User Under Test" user row in the "Normal Users" table in the "Manage Users" page
    And The "User Options" page is shown
    When The user enters the user options details in the "User Options" page:
      | Status |
      | Active |
    And The user logs out
    And The user is redirected to the "Login" page
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email                       | Password |
      | user-under-test@fogbugz.com | test1234 |
    Then The full name of the user is shown as "User Under Test" in the sidebar

  Scenario: Administrator can activate an inactive user: "Activate" link
    When The user clicks the "Activate" link for the "User Under Test" user row in the "Normal Users" table in the "Manage Users" page
    Then The following users are listed in the "Normal Users" table in the "Manage Users" page in the following order:
      | Full name | Email |
    And The user clicks the "Total Active" tab in the "Manage Users" page
    And The following users are listed in the "Normal Users" table in the "Manage Users" page in the following order:
      | Full name       | Email                       |
      | User Under Test | user-under-test@fogbugz.com |
    And The user logs out
    And The user is redirected to the "Login" page
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email                       | Password |
      | user-under-test@fogbugz.com | test1234 |
    And The full name of the user is shown as "User Under Test" in the sidebar
