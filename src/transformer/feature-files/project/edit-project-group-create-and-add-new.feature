@NotAutomated
@JIRA-Key-MANUSCRIPT-29764
@Project
Feature: Project - Edit - Project group - Create and add new

  Scenario: Administrator can edit an existing project: Add the project to a new project group
    Given The user is logged in as Administrator
    And The following project groups exist:
      | Name        | Description            |
      | 5k Rewrites | The 5k Rewrites.       |
      | Software    | The software projects. |
    And The following projects exist:
      | Project Name       | Project Groups        |
      | FogBugz 5k Rewrite | 5k Rewrites, Software |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The "Projects" page is shown
    And The user clicks the "Edit" button for the "FogBugz 5k Rewrite" project row in the "Projects" table in the "Projects" page
    And The user is redirected to the "Edit Project" page
    And The user clicks the "Add Project Group" link in the "Project Groups" table in the "Edit Project" page
    And The "Add Project Group" dialog is opened
    When The user enters the project group details in the "Add Project Group" dialog:
      | Project Group           | New Project Group name    |
      | -- New Project Group -- | Greatest company projects |
    And The user clicks the "OK" button in the "Add Project Group" dialog
    Then The "Add Project Group" dialog is closed
    And The following project groups are listed in the "Project Groups" table in the "Edit Project" page in the following order:
      | Remove | Project Group             | Description            |
      | true   | 5k Rewrites               | The 5k Rewrites.       |
      | true   | Greatest company projects |                        |
      | true   | Software                  | The software projects. |
    And The user clicks the "Cancel" button in the "Edit Project" page
    And The user is redirected to the "Projects" page
    And The following projects are listed in the "Projects" table in the "Projects" page in the following order:
      | Can Edit | Can Delete | Project            | Primary Contact | Project Groups                                   | Workflow         | Description                |
      | true     | true       | FogBugz 5k Rewrite | Administrator   | 5k Rewrites, Greatest company projects, Software | Default Workflow |                            |
      | true     | false      | Inbox              | Administrator   |                                                  | Default Workflow | Inbox for FogBugz Autosort |
      | true     | true       | Onboarding Project | Administrator   |                                                  | Default Workflow |                            |
    And The following project groups are listed in the "Project Groups" table in the "Projects" page in the following order:
      | Can Edit | Can Delete | Project Group             | Projects           | Can Add Project | Description            |
      | true     | true       | 5k Rewrites               | FogBugz 5k Rewrite | true            | The 5k Rewrites.       |
      | true     | true       | Greatest company projects | FogBugz 5k Rewrite | true            |                        |
      | true     | true       | Software                  | FogBugz 5k Rewrite | true            | The software projects. |
