@JIRA-Key-MANUSCRIPT-29185
@UserGroup
Feature: User group - Delete - Normal

  Scenario: Administrator can delete a normal user group
    Given The user is logged in as Administrator
    And The following normal user groups exist:
      | Name    | Notes       |
      | Crazy88 | Authority   |
      | X55     | AKIT Member |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Groups" menu item in the sidebar menu
    And The user is redirected to the "User Groups" page
    When The user clicks the "Delete" button for the "X55" user group row in the "Normal User Groups" table in the "User Groups" page
    And The confirmation dialog is opened
    And The user clicks the "OK" button in the confirmation dialog
    Then The confirmation dialog is closed
    And The following user groups are listed in the "Normal User Groups" table in the "User Groups" page:
      | Name    | Notes     |
      | Crazy88 | Authority |
