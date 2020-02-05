@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29762
@Project
Feature: Project - Edit - Primary Contact

  Scenario Outline: Administrator can edit an existing project: "Primary Contact"
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name                | Email                              | Role   |
      | Ultimate Ticket Resolver | admin@ultimate-ticket-resolver.com | Normal |
    And The following projects exist:
      | Project Name       |
      | FogBugz 5k Rewrite |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The "Projects" page is shown
    And The user clicks the "Edit" button for the "FogBugz 5k Rewrite" project row in the "Projects" table in the "Projects" page
    And The user is redirected to the "Edit Project" page
    When The user enters the project details in the "Edit Project" page:
      | Primary Contact   |
      | <Primary Contact> |
    And The user clicks the "OK" button in the "Edit Project" page
    Then The user is redirected to the "Projects" page
    And The following projects are listed in the "Projects" table in the "Projects" page in the following order:
      | Can Edit | Can Delete | Project            | Primary Contact   | Project Groups | Workflow         | Description                |
      | true     | true       | FogBugz 5k Rewrite | <Primary Contact> |                | Default Workflow |                            |
      | true     | false      | Inbox              | Administrator     |                | Default Workflow | Inbox for FogBugz Autosort |
      | true     | true       | Onboarding Project | Administrator     |                | Default Workflow |                            |
    Examples:
      | Primary Contact          |
      | Administrator            |
      | Ultimate Ticket Resolver |
      | Unassigned               |
