@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29172
@UserGroup
Feature: User group - Add User - Normal

  Scenario: Administrator can add a user to a normal user group
    Given The user is logged in as Administrator
    And The following normal user groups exist:
      | Name | Notes       |
      | X55  | AKIT Member |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Groups" menu item in the sidebar menu
    And The user is redirected to the "User Groups" page
    And The user clicks the "Edit" button for the "X55" user group row in the "Normal User Groups" table in the "User Groups" page
    And The "Edit User Group" page is shown
    When The user clicks the "Add a Member" button in the "Users" table in the "Edit User Group" page
    And The "Add User" dialog is opened
    And The user enters the user details in the "Add User" dialog:
      | Users         |
      | Administrator |
    And The user clicks the "OK" button in the "Add User" dialog
    Then The "Add User" dialog is closed
    # TODO: Cover the toast notification. Example: The following toast notification is shown in the "Priorities" page:
    And The following users are listed in the "Users" table in the "Edit User Group" page:
      | Name          |
      | Administrator |
