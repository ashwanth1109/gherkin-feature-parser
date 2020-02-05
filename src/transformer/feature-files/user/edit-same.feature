@JIRA-Key-MANUSCRIPT-29193
@User
Feature: User - Edit same

  Scenario: Administrator can edit name of themselves
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The "Manage Users" page is shown
    And The following users are listed in the "Administrators" table in the "Manage Users" page:
      | Full Name     | Email   |
      | Administrator |         |
    And The user clicks the "Edit" button for the "Administrator" user row in the "Administrators" table in the "Manage Users" page
    And The "User Options" page is shown
    When The user enters the user options details in the "User Options" page:
      | Full Name | Email   |
      | Joker     |         |
    And The user clicks the "Check" button for the "Full Name" field in the "User Options" Page
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The "Manage Users" page is shown
    Then The following users are listed in the "Administrators" table in the "Manage Users" page:
      | Full Name | Email   |
      | Joker     |         |

  Scenario: Administrator can change email of themselves
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The "Manage Users" page is shown
    And The user clicks the "Edit" button for the "Administrator" user row in the "Administrators" table in the "Manage Users" page
    And The "User Options" page is shown
    When The user enters the user options details in the "User Options" page:
      | Full Name   | Email                    |
      |             | thirtynine@twentytwo.com |
    And The user clicks the "Check" button for the "Email" field in the "User Options" Page
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The "Manage Users" page is shown
    Then The following users are listed in the "Administrators" table in the "Manage Users" page:
      | Full Name     | Email                    |
      | Administrator | thirtynine@twentytwo.com |
