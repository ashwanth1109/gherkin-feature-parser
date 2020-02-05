@JIRA-Key-MANUSCRIPT-29186
@UserGroup
Feature: User group - Delete community user group

  Scenario: Administrator can delete a community user group
    Given The user is logged in as Administrator
    And The following community user groups exist:
      | Name                    | Notes     |
      | Community User Group-1  | New Group |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Groups" menu item in the sidebar menu
    And The "User Groups" page is shown
    When The user clicks the "Delete" button for the "Community User Group-1" community user group row in the "Community User Groups" table in the "User Groups" page
    And The "Delete Community User Group" confirmation dialog is opened
    And The user clicks the "OK" button in the "Delete Community User Group" confirmation dialog
    Then The "Delete Community User Group" confirmation dialog is closed
    And The following community user groups are listed in the "Community User Groups" table in the "User Groups" page:
      | Name | Notes |
