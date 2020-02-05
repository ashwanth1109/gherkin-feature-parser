@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29608
@Project
Feature: Project - Default projects

  Scenario: System provides the default projects
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    When The user clicks the "Projects" menu item in the sidebar menu
    Then The "Projects" page is shown
    # NOTE: The "Primary Contact" is the root user — the one who created the current customer instance (tenant).
    And The following projects are listed in the "Projects" table in the "Projects" page in the following order:
      | Can Edit | Can Delete | Project            | Primary Contact | Project Groups | Workflow         | Description                |
      | true     | false      | Inbox              | Administrator   |                | Default Workflow | Inbox for FogBugz Autosort |
      | true     | true       | Onboarding Project | Administrator   |                | Default Workflow |                            |
