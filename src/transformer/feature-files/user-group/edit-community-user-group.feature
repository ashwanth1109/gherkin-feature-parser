@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29181
@UserGroup
Feature: User group - Edit community user group

  Scenario: Administrator can edit community user groups
    Given The user is logged in as Administrator
    And The following community user groups exist:
      | Name    | Notes          |
      | Misfits | Magical people |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Groups" menu item in the sidebar menu
    And The user is redirected to the "User Groups" page
    When The user clicks the "Edit" button for the "Misfits" user group row in the "Community User Groups" table in the "User Groups" page
    And The user is redirected to the "Edit User Group" page
    And The user enters the user group details in the "Edit User Group" page:
      | Name        | Notes    |
      | Superheroes | Secretly |
    And The user clicks the "OK" button in the "Edit User Group" page
    Then The user is redirected to the "User Groups" page
    And The following community user groups are listed in the "Community User Groups" table in the "User Groups" page:
      | Name        | Notes    |
      | Superheroes | Secretly |
