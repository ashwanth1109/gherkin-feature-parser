@NotAutomated
@JIRA-Key-MANUSCRIPT-28864
@User
Feature: User - Add new

  Scenario Outline: Add new user and send sign-up invitation to user
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The user clicks the "Add New User" button in the "Users" page
    When The user enters the user details in the "Add New User" dialog:
      | Full Name   | Email   | Active on FogBugz   | Active on Kiln   | Role   |
      | <Full Name> | <Email> | <Active on FogBugz> | <Active on Kiln> | <Role> |
    And The user clicks the "Add User" button in the "Add New User" dialog
    Then The "Add New User" dialog is closed
    And The added user is listed in the table in the "<Role>" section in the "Total Active" tab:
      | Full name   | Email   | Active on FogBugz   | Active on Kiln   |
      | <Full Name> | <Email> | <Active on FogBugz> | <Active on Kiln> |
    And The invitation email with the temporary password has been sent to the "<Email>" email address
    Examples:
      | Full Name                  | Email                     | Role          | Active on FogBugz | Active on Kiln |
      | John Smith - Normal User   | normal-user@fogbugz.com   | Normal        | true              | true           |
      | John Smith - Administrator | administrator@fogbugz.com | Administrator | false             | false          |
      | John Smith - Virtual user  | virtual-user@fogbugz.com  | Virtual       | N/A               | N/A            |
