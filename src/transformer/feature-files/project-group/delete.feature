@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29031
@ProjectGroup
Feature: Project group - Delete

  Scenario: Administrator can delete an existing project group
    Given The user is logged in as Administrator
    And The following project groups exist:
      | Name                 | Description                                       |
      | Key company projects | The group of the most important company projects. |
    And The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    When The user clicks the "Delete" button for the "Key company projects" project group row in the "Project Groups" section in the "Projects" page
    And The "Delete Project Group" confirmation dialog is opened
    And The user clicks the "OK" button in the "Delete Project Group" confirmation dialog
    Then The "Delete Project Group" confirmation dialog is closed
    And The deleted project group is not listed in the "Project Groups" section in the "Projects" page
