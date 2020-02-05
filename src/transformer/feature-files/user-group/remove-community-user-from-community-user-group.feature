@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29203
@UserGroup
Feature: User group - Remove community user from community user group

  Scenario: Administrator can remove a community user from a community user group
    Given The user is logged in as Administrator
    And The following community user groups exist:
      | Name       | Notes                        |
      | OpenSource | Looking forward for new bugs |
    And The following community users exist:
      | User Group | Email                          | Name        |
      | OpenSource | community-user@manuscript.com  | Linus T     |
      | OpenSource | community-user2@manuscript.com | Mr Stollman |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Groups" menu item in the sidebar menu
    And The user is redirected to the "User Groups" page
    And The user clicks the "Edit" button for the "OpenSource" user group row in the "Community User Groups" table in the "User Groups" page
    And The "Edit Community User Group" page is shown
    When The user clicks the "Delete" button for the "Linus T" user row in the "Users" table in the "Edit Community User Group" page
    And The confirmation dialog is opened
    And The user clicks the "OK" button in the confirmation dialog
    Then The confirmation dialog is closed
    And The following users are listed in the "Users" table in the "Edit Community User Group" page:
      | Name        |
      | Mr Stollman |
