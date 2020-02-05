@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29216
@ProjectGroup
Feature: Project group - Add project

  Scenario: Administrator can add a project to a project group
    Given The user is logged in as Administrator
    And The following project groups exist:
      | Name                 | Description                                       |
      | Key company projects | The group of the most important company projects. |
    And The following projects exist:
      | Project Name       | Primary Contact |
      | FogBugz 5k Rewrite | Administrator   |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The user clicks the "Add" button for the "Key company projects" project group row in the "Project Groups" table in the "Projects" page
    And The "Add project to project group" dialog is opened
    When The user selects the "FogBugz 5k Rewrite" project in the "Project" dropdown in the "Add project to project group" dialog
    And The user clicks the "OK" button in the "Add project to project group" dialog
    Then The "Add project to project group" dialog is closed
    And The following project groups are listed in the "Project Groups" table in the "Projects" page:
      | Name                 | Description                                       | Projects             |
      | Key company projects | The group of the most important company projects. | Key company projects |
