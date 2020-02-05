@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29767
@Project
Feature: Project - Edit - Workflow

  Scenario Outline: Administrator can edit an existing project: "Workflow"
    Given The user is logged in as Administrator
    And The following workflows exist:
      | Workflow Name |
      | 5k Rewrite    |
    And The following projects exist:
      | Project Name       |
      | FogBugz 5k Rewrite |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The "Projects" page is shown
    And The user clicks the "Edit" button for the "FogBugz 5k Rewrite" project row in the "Projects" table in the "Projects" page
    And The user is redirected to the "Edit" page
    When The user enters the project details in the "Edit Project" page:
      | Workflow   |
      | <Workflow> |
    And The user clicks the "OK" button in the "Edit Project" page
    Then The user is redirected to the "Projects" page
    And The following projects are listed in the "Projects" table in the "Projects" page in the following order:
      | Can Edit | Can Delete | Project            | Primary Contact | Project Groups | Workflow         | Description                |
      | true     | true       | FogBugz 5k Rewrite | Administrator   |                | <Workflow>       |                            |
      | true     | false      | Inbox              | Administrator   |                | Default Workflow | Inbox for FogBugz Autosort |
      | true     | true       | Onboarding Project | Administrator   |                | Default Workflow |                            |
    Examples:
      | Workflow         |
      | Default Workflow |
      | 5k Rewrite       |
