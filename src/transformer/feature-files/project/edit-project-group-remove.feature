@NotAutomated
@JIRA-Key-MANUSCRIPT-29766
@Project
Feature: Project - Edit - Project group - Remove

  Scenario: Administrator can edit an existing project: Add the project from an existing project group
    Given The user is logged in as Administrator
    And The following project groups exist:
      | Name                 | Description                                       |
      | 5k Rewrites          | The 5k Rewrites.                                  |
      | Key company projects | The group of the most important company projects. |
      | Software             | The software projects.                            |
    And The following projects exist:
      | Project Name       | Project Groups                              |
      | FogBugz 5k Rewrite | 5k Rewrites, Key company projects, Software |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The "Projects" page is shown
    And The user clicks the "Edit" button for the "FogBugz 5k Rewrite" project row in the "Projects" table in the "Projects" page
    And The user is redirected to the "Edit Project" page
    When The user clicks the "Delete" button for the "Key company projects" project group row in the "Project Groups" table in the "Projects" page
    And The "Remove Project Group" confirmation dialog is opened
    And The user clicks the "OK" button in the "Remove Project Group" confirmation dialog
    Then The "Remove Project Group" confirmation dialog is closed
    And The following project groups are listed in the "Project Groups" table in the "Edit Project" page in the following order:
      | Remove | Project Group | Description            |
      | true   | 5k Rewrites   | The 5k Rewrites.       |
      | true   | Software      | The software projects. |
    And The user clicks the "Cancel" button in the "Edit Project" page
    And The user is redirected to the "Projects" page
    And The following projects are listed in the "Projects" table in the "Projects" page in the following order:
      | Can Edit | Can Delete | Project            | Primary Contact | Project Groups        | Workflow         | Description                |
      | true     | true       | FogBugz 5k Rewrite | Administrator   | 5k Rewrites, Software | Default Workflow |                            |
      | true     | false      | Inbox              | Administrator   |                       | Default Workflow | Inbox for FogBugz Autosort |
      | true     | true       | Onboarding Project | Administrator   |                       | Default Workflow |                            |
    And The following project groups are listed in the "Project Groups" table in the "Projects" page in the following order:
      | Can Edit | Can Delete | Project Group        | Projects           | Can Add Project | Description                                       |
      | true     | true       | 5k Rewrites          | FogBugz 5k Rewrite | true            | The 5k Rewrites.                                  |
      | true     | true       | Key company projects |                    | true            | The group of the most important company projects. |
      | true     | true       | Software             | FogBugz 5k Rewrite | true            | The software projects.                            |
