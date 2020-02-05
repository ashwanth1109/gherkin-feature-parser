@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29471
@UserGroup
Feature: User group - Remove User - Normal

  Scenario: Administrator can remove a user from a normal user group
    Given The user is logged in as Administrator
    And The following normal user groups exist:
      | Name | Notes       |
      | X55  | AKIT Member |
    And The following users exist:
      | User Group | Email                        | Password       | Full Name   |
      | X55        | normal-user@manuscript.com   | GoodPassword1! | Normal User |
      | X55        | abnormal-user@manuscript.com | WeakPassword!  | Weak User   |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Groups" menu item in the sidebar menu
    And The user is redirected to the "User Groups" page
    And The user clicks the "Edit" button for the "X55" user group row in the "Normal User Groups" table in the "User Groups" page
    And The "Edit User Group" page is shown
    When The user clicks the "Delete" button for the "Normal User" user row in the "Users" table in the "Edit User Group" page
    And The confirmation dialog is opened
    And The user clicks the "OK" button in the confirmation dialog
    Then The confirmation dialog is closed
    And The following users are listed in the "Users" table in the "Edit User Group" page:
      | Name      |
      | Weak User |
