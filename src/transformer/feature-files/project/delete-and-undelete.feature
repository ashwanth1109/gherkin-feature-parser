@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29112
@Project
Feature: Project - Delete and Undelete

  Background:
    Given The user is logged in as Administrator
    And The following workflows exist:
      | Workflow Name    |
      | 5k Rewrite       |
      | 5k Rewrite - Old |
    And The following projects exist:
      | Project Name                     | Primary Contact | Workflow         | Description                          | Deleted |
      | Alpha                            | Administrator   | Default Workflow | Alpha project.                       | false   |
      | FogBugz 5k Rewrite               | Administrator   | 5k Rewrite       | 5k rewrite of the legacy FogBugz.    | false   |
      | FogBugz 5k Rewrite - Iteration 0 | Administrator   | 5k Rewrite - Old | 5k rewrite of the legacy FogBugz #0. | true    |
      | FogBugz 5k Rewrite - Iteration 1 | Administrator   | 5k Rewrite - Old | 5k rewrite of the legacy FogBugz #1. | true    |
      | FogBugz 5k Rewrite - Iteration 2 | Administrator   | 5k Rewrite - Old | 5k rewrite of the legacy FogBugz #2. | false   |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu

  Scenario: Administrator can delete an existing project that is not marked as deleted
    Given The "Projects" page is shown
    When The user clicks the "Delete" button for the "FogBugz 5k Rewrite - Iteration 2" project row in the "Projects" table in the "Projects" page
    And The "Delete Project" dialog is opened
    And The user clicks the "OK" button in the "Delete Project" dialog
    Then The "Delete Project" dialog is closed
    And The following projects are listed in the "Projects" table in the "Projects" page in the following order:
      | Can Edit | Can Delete | Project            | Primary Contact | Workflow         | Description                       | Deleted |
      | true     | true       | Alpha              | Administrator   | Default Workflow | Alpha project.                    | false   |
      | true     | true       | FogBugz 5k Rewrite | Administrator   | 5k Rewrite       | 5k rewrite of the legacy FogBugz. | false   |
      | true     | false      | Inbox              | Administrator   | Default Workflow | Inbox for FogBugz Autosort        | false   |
      | true     | true       | Onboarding Project | Administrator   | Default Workflow |                                   | false   |

  Scenario: Administrator can undelete an existing project that is marked as deleted
    Given The "Projects" page is shown
    And The user clicks the "Display Deleted Projects" link in the "Projects" table in the "Projects" page
    When The user clicks the "Undelete" button for the "FogBugz 5k Rewrite - Iteration 1" project row in the "Projects" table in the "Projects" page
    Then The user is redirected to the "Projects" page
    And The user clicks the "Display Deleted Projects" link in the "Projects" table in the "Projects" page
    And The following projects are listed in the "Projects" table in the "Projects" page in the following order:
      | Can Edit | Can Delete | Project                          | Primary Contact | Workflow         | Description                          | Deleted |
      | true     | true       | Alpha                            | Administrator   | Default Workflow | Alpha project.                       | false   |
      | true     | true       | FogBugz 5k Rewrite               | Administrator   | 5k Rewrite       | 5k rewrite of the legacy FogBugz.    | false   |
      | true     | true       | FogBugz 5k Rewrite - Iteration 1 | Administrator   | 5k Rewrite - Old | 5k rewrite of the legacy FogBugz #1. | false   |
      | true     | true       | FogBugz 5k Rewrite - Iteration 2 | Administrator   | 5k Rewrite - Old | 5k rewrite of the legacy FogBugz #2. | false   |
      | true     | false      | Inbox                            | Administrator   | Default Workflow | Inbox for FogBugz Autosort           | false   |
      | true     | true       | Onboarding Project               | Administrator   | Default Workflow |                                      | false   |
      | false    | false      | FogBugz 5k Rewrite - Iteration 0 | Administrator   | 5k Rewrite - Old | 5k rewrite of the legacy FogBugz #0. | true    |
