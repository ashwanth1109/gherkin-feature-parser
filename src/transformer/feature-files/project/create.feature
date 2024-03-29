@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29113
@Project
Feature: Project - Create

  Scenario: Administrator can create a new project: "Project Name"
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The "Projects" page is shown
    And The user clicks the "Create New Project" link in the "Projects" section in the "Projects" page
    And The "Create New Project" page is shown
    When The user enters the project details in the "Create New Project" page:
      | Project Name       |
      | FogBugz 5k Rewrite |
    And The user clicks the "OK" button in the "Create New Project" page
    And The user is redirected to the "Edit Project" page
    And The user clicks the "OK" button in the "Edit Project" page
    Then The user is redirected to the "Projects" page
    # NOTE: The "Primary Contact" is the root user — the one who created the current customer instance (tenant).
    And The following projects are listed in the "Projects" table in the "Projects" page in the following order:
      | Can Edit | Can Delete | Project            | Primary Contact | Project Groups | Workflow         | Description                |
      | true     | true       | FogBugz 5k Rewrite | Administrator   |                | Default Workflow |                            |
      | true     | false      | Inbox              | Administrator   |                | Default Workflow | Inbox for FogBugz Autosort |
      | true     | true       | Onboarding Project | Administrator   |                | Default Workflow |                            |
