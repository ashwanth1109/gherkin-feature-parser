@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29217
@ProjectGroup
Feature: Project group - Remove project

  Scenario: Administrator can remove a project that belongs to a project group from the project group
    Given The user is logged in as Administrator
    And The following project groups exist:
      | Name                 | Description                                       |
      | Key company projects | The group of the most important company projects. |
    And The following projects exist:
      | Project Name       | Primary Contact | Project Groups       |
      | FogBugz 5k Rewrite | Administrator   | Key company projects |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    When The user clicks the "Remove" button for the "FogBugz 5k Rewrite" project for the "Key company projects" project group row in the "Project Groups" table in the "Projects" page
    And The "Remove project from project group" confirmation dialog is opened
    And The user clicks the "OK" button in the "Remove project from project group" confirmation dialog
    Then The "Remove project from project group" confirmation dialog is closed
    And The following project groups are listed in the "Project Groups" table in the "Projects" page:
      | Name                 | Description                                       | Projects |
      | Key company projects | The group of the most important company projects. |          |
