@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29494
@ProjectGroup
Feature: Project group - Add project - Filter projects

  Background:
    Given The user is logged in as Administrator
    And The following project groups exist:
      | Name                 | Description                                       |
      | Key company projects | The group of the most important company projects. |

  Scenario: Administrator cannot add a project that belongs to a project group to the same project group
    Given The following projects exist:
      | Project Name       | Primary Contact | Project Groups       |
      | FogBugz 5k Rewrite | Administrator   | Key company projects |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    When The user clicks the "Add" button for the "Key company projects" project group row in the "Project Groups" table in the "Projects" page
    Then The "Add project to project group" dialog is opened
    And The "FogBugz 5k Rewrite" project is not listed in the "Project" dropdown in the "Add project to project group" dialog

  Scenario: Administrator cannot add a deleted project to a project group
    Given The following projects exist:
      | Project Name       | Primary Contact | Deleted |
      | FogBugz 5k Rewrite | Administrator   | true    |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    When The user clicks the "Add" button for the "Key company projects" project group row in the "Project Groups" table in the "Projects" page
    Then The "Add project to project group" dialog is opened
    And The "FogBugz 5k Rewrite" project is not listed in the "Project" dropdown in the "Add project to project group" dialog
