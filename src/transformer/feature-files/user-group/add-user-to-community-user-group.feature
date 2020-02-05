@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29201
@UserGroup
Feature: User group - Add user to community user group

  Scenario: Administrator can add community user to a community user group
    Given The user is logged in as Administrator
    And The following community user groups exist:
      | Name                       | Notes     |
      | Test Community User Group  | New Group |
    And The following users exist:
        | Full Name  | Email                    | Account Type  | Status |
        | Test UserA | testusera@manuscript.com | Community     | Active |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Groups" menu item in the sidebar menu
    And The "User Groups" page is shown
    When The user clicks the "Edit" button for the "Test Community User Group" community user group row in the "Community User Groups" table in the "User Groups" page
    And The user is redirected to the "Edit Community User Group" page
    And The user clicks the "Add a Member" button in the "Users" table in the "Edit Community User Group" page
    And The user selects the "Test UserA" community user in the "Member" dropdown in the "Users" table in the "Edit Community User Group" page
    And The user clicks the "Check" button in the "Users" table in the "Edit Community User Group" page
    Then The "Member" dropdown is closed in the "Users" table in the "Edit Community User Group" page
    And The following community users are listed in the "Users" table in the "Edit Community User Group" page in the following order:
        | Remove  | Name       |
        | true    | Test UserA |
