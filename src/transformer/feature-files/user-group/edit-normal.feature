@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29180
@UserGroup
Feature: User group - Edit - Normal

  Scenario: Administrator can edit a normal user group
    Given The user is logged in as Administrator
    And The following normal user groups exist:
      | Name | Notes       |
      | X55  | AKIT Member |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Groups" menu item in the sidebar menu
    And The user is redirected to the "User Groups" page
    When The user clicks the "Edit" button for the "X55" user group row in the "Normal User Groups" table in the "User Groups" page
    And The user is redirected to the "Edit User Group" page
    And The user enters the user group details in the "Edit User Group" page:
      | Name  | Notes    |
      | Robin | Sparkles |
    And The user clicks the "OK" button
    Then The user is redirected to the "User Groups" page
    And The following user groups are listed in the "Normal User Groups" table in the "User Groups" page:
      | Name  | Notes    |
      | Robin | Sparkles |
