@JIRA-Key-MANUSCRIPT-29178
@UserGroup
Feature: User group - Create - Normal

  Scenario: Administrator can create a normal user group
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Groups" menu item in the sidebar menu
    And The user is redirected to the "User Groups" page
    When The user clicks the "Create New User Group" button in the "Normal User Groups" table in the "User Groups" page
    And The "Create New User Group" dialog is opened
    And The user enters the following details in the "Create New User Group" dialog:
      | Name | Notes       |
      | X55  | AKIT Member |
    And The user clicks the "OK" button in the "Create New User Group" dialog
    Then The "Create New User Group" dialog is closed
    And The following user groups are listed in the "Normal User Groups" table in the "User Groups" page:
      | Name | Notes       |
      | X55  | AKIT Member |
