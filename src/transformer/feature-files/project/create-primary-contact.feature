@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29611
@Project
Feature: Project - Create - Primary Contact

  Scenario Outline: Administrator can create a new project: "Primary Contact"
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name                | Email                              | Role   |
      | Ultimate Ticket Resolver | admin@ultimate-ticket-resolver.com | Normal |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The "Projects" page is shown
    And The user clicks the "Create New Project" link in the "Projects" section in the "Projects" page
    And The "New Project" page is shown
    When The user enters the project details in the "Create New Project" page:
      | Project Name       | Primary Contact   |
      | FogBugz 5k Rewrite | <Primary Contact> |
    And The user clicks the "OK" button in the "Create New Project" page
    And The user is redirected to the "Edit" page
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
