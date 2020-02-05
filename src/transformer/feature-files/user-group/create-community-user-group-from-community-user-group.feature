@JIRA-Key-MANUSCRIPT-29179
@UserGroup
Feature: User group - Create community user group

  Scenario: Administrator can create a community user group
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Groups" menu item in the sidebar menu
    And The "User Groups" page is shown
    And The user clicks the "Create New User Group" link in the "Community User Groups" section in the "User Groups" page
    And The "Create New User Group" dialog is opened
    When The user enters the community user group details in the "Create New User Group" dialog:
      | Name                      | Notes     |
      | Test Community User Group | New Group |
    And The user clicks the "OK" button in the "Create New User Group" dialog
    Then The user is redirected to the "User Groups" page
    And The following user groups are listed in the "Community User Groups" section in the "User Groups" page in the following order:
      | Can Edit | Can Delete | Name                      | Notes     |
      | true     | true       | Test Community User Group | New Group |
