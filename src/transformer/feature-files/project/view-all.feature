@NotAutomated
@JIRA-Key-MANUSCRIPT-29111
@Project
Feature: Project - View all

  Background:
    Given The user is logged in as Administrator
    And The following workflows exist:
      | Workflow Name    |
      | 5k Rewrite       |
      | 5k Rewrite - Old |
    And The following project groups exist:
      | Name             | Description                              |
      | 5k Rewrites      | Rewriting a product in 5k lines of code. |
      | Alpha projects   | The alpha group.                         |
      | Program projects |                                          |
      | programs         |                                          |
    And The following projects exist:
      | Project Name                     | Primary Contact | Workflow         | Description                          | Project Groups                          | Deleted |
      | Alpha                            | Administrator   | Default Workflow | Alpha project.                       | Alpha projects                          | false   |
      | FogBugz 5k Rewrite               | Administrator   | 5k Rewrite       | 5k rewrite of the legacy FogBugz.    | Program projects, 5k Rewrites, programs | false   |
      | FogBugz 5k Rewrite - Iteration 1 | Administrator   | 5k Rewrite - Old | 5k rewrite of the legacy FogBugz #1. | 5k Rewrites                             | true    |
      | FogBugz 5k Rewrite - Iteration 2 | Administrator   | 5k Rewrite - Old | 5k rewrite of the legacy FogBugz #2. | 5k Rewrites                             | true    |
      | fogbugz                          | Administrator   | Default Workflow | fogbugz?!                            |                                         | false   |
      | fogbugz - Iteration 1            | Administrator   | Default Workflow | fogbugz #1?!                         |                                         | true    |

  Scenario: Administrator can view the existing projects that are not marked as deleted
    Given The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    When The user clicks the "Projects" menu item in the sidebar menu
    Then The "Projects" page is shown
    And The following projects are listed in the "Projects" table in the "Projects" page in the following order:
      | Can Edit | Can Delete | Project            | Primary Contact | Project Groups                          | Workflow         | Description                       | Deleted |
      | true     | true       | Alpha              | Administrator   | Alpha projects                          | Default Workflow | Alpha project.                    | false   |
      | true     | true       | fogbugz            | Administrator   |                                         | Default Workflow | fogbugz?!                         | false   |
      | true     | true       | FogBugz 5k Rewrite | Administrator   | 5k Rewrites, Program projects, programs | 5k Rewrite       | 5k rewrite of the legacy FogBugz. | false   |
      | true     | false      | Inbox              | Administrator   |                                         | Default Workflow | Inbox for FogBugz Autosort        | false   |
      | true     | true       | Onboarding Project | Administrator   |                                         | Default Workflow |                                   | false   |

  Scenario: Administrator can view the existing projects, including the ones that are marked as deleted
    Given The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The "Projects" page is shown
    When The user clicks the "Display Deleted Projects" link in the "Projects" table in the "Projects" page
    Then The following projects are listed in the "Projects" table in the "Projects" page in the following order:
      | Can Edit | Can Delete | Project                          | Primary Contact | Project Groups                          | Workflow         | Description                          | Deleted |
      | true     | true       | Alpha                            | Administrator   | Alpha projects                          | Default Workflow | Alpha project.                       | false   |
      | true     | true       | fogbugz                          | Administrator   |                                         | Default Workflow | fogbugz?!                            | false   |
      | true     | true       | FogBugz 5k Rewrite               | Administrator   | 5k Rewrites, Program projects, programs | 5k Rewrite       | 5k rewrite of the legacy FogBugz.    | false   |
      | true     | false      | Inbox                            | Administrator   |                                         | Default Workflow | Inbox for FogBugz Autosort           | false   |
      | true     | true       | Onboarding Project               | Administrator   |                                         | Default Workflow |                                      | false   |
      | false    | false      | fogbugz - Iteration 1            | Administrator   |                                         | Default Workflow | fogbugz #1?!                         | true    |
      | false    | false      | FogBugz 5k Rewrite - Iteration 1 | Administrator   | 5k Rewrites                             | 5k Rewrite - Old | 5k rewrite of the legacy FogBugz #1. | true    |
      | false    | false      | FogBugz 5k Rewrite - Iteration 2 | Administrator   | 5k Rewrites                             | 5k Rewrite - Old | 5k rewrite of the legacy FogBugz #2. | true    |
