@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29612
@Project
Feature: Project - Edit

  Scenario: Administrator can edit an existing project: "Project Name"
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name         |
      | FogBugz 100k Rewrite |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The "Projects" page is shown
    And The user clicks the "Edit" button for the "FogBugz 100k Rewrite" project row in the "Projects" table in the "Projects" page
    And The user is redirected to the "Edit Project" page
    When The user enters the project details in the "Edit Project" page:
      | Project Name        |
      | XtraBugz 5k Rewrite |
    And The user clicks the "OK" button in the "Edit Project" page
    Then The user is redirected to the "Projects" page
    # NOTE: The "Primary Contact" is the root user — the one who created the current customer instance (tenant).
    And The following projects are listed in the "Projects" table in the "Projects" page in the following order:
      | Can Edit | Can Delete | Project             | Primary Contact | Project Groups | Workflow         | Description                |
      | true     | false      | Inbox               | Administrator   |                | Default Workflow | Inbox for FogBugz Autosort |
      | true     | true       | Onboarding Project  | Administrator   |                | Default Workflow |                            |
      | true     | true       | XtraBugz 5k Rewrite | Administrator   |                | Default Workflow |                            |
