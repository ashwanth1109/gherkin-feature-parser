@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29076
@User
Feature: User - Edit different user

  Scenario: Administrator can edit name of other users
    Given The user is logged in as Administrator
    And The following users exist:
      | Full name | Account Type  |
      | Lion King | Administrator |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The "Manage Users" page is shown
    And The following users are listed in the "Administrators" table in the "Manage Users" page:
      | Full Name |
      | Lion King |
    And The user clicks the "Edit" button for the "Lion King" user row in the "Administrators" table in the "Manage Users" page
    And The "User Options" page is shown
    When The user enters the user options details in the "User Options" page:
      | Full Name |
      | Joker     |
    And The user clicks the "Check" button for the "Full Name" field in the "User Options" Page
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The "Manage Users" page is shown
    Then The following users are listed in the "Administrators" table in the "Manage Users" page:
      | Full Name |
      | Joker     |

  Scenario: Administrator can change email of other users
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name | Email         | Account Type |
      | Lion King | lk@jungle.com | Normal       |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The "Manage Users" page is shown
    And The user clicks the "Edit" button for the "Lion King" user row in the "Normal Users" table in the "Manage Users" page
    And The "User Options" page is shown
    When The user enters the user options details in the "User Options" page:
      | Email                    |
      | thirtynine@twentytwo.com |
    And The user clicks the "Check" button for the "Email" field in the "User Options" Page
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The "Manage Users" page is shown
    Then The following users are listed in the "Normal Users" table in the "Manage Users" page:
      | Full Name | Email                    |
      | Lion King | thirtynine@twentytwo.com |
