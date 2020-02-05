@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29731
@Project
Feature: Project - Create - Initial Permissions

  Background:
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The "Projects" page is shown
    And The user clicks the "Create New Project" link in the "Projects" section in the "Projects" page

  Scenario: Administrator can create a new project: The "Initial Permissions" property is set to the "Only Site Admins can manage cases" value
    Given The "New Project" page is shown
    When The user enters the project details in the "Create New Project" page:
      | Project Name       | Initial Permissions               |
      | FogBugz 5k Rewrite | Only Site Admins can manage cases |
    And The user clicks the "OK" button in the "Create New Project" page
    And The user is redirected to the "Edit" page
    And The user clicks the "OK" button in the "Edit Project" page
    Then The user is redirected to the "Projects" page
    # NOTE: The "Primary Contact" is the root user — the one who created the current customer instance (tenant).
    And The following projects are listed in the "Projects" table in the "Projects" page in the following order:
      | Can Edit | Can Delete | Project            | Primary Contact | Project Groups | Workflow         | Description                |
      | true     | true       | FogBugz 5k Rewrite | Administrator   |                | Default Workflow |                            |
      | true     | false      | Inbox              | Administrator   |                | Default Workflow | Inbox for FogBugz Autosort |
      | true     | true       | Onboarding Project | Administrator   |                | Default Workflow |                            |
    And The user clicks the "Edit" button for the "FogBugz 5k Rewrite" project row in the "Projects" table in the "Projects" page
    And The user is redirected to the "Edit" page
    And The user clicks the "Edit Permissions" link in the "Edit Project" page
    And The "Permissions" section is shown in the "Edit Project" page
    And The following normal users and normal user groups are listed in the "Normal Users" table in the "Permissions" section in the "Edit Project" page in the following order:
      | Remove | Type       | Name                | Read  | Modify | Admin |
      | false  | User Group | Site Administrators | false | false  | true  |
    And The following community users and community user groups are listed in the "Community Users" table in the "Permissions" section in the "Edit Project" page in the following order:
      | Remove | Type | Name | Submit Cases |
    And The "Anonymous Users" permissions are set to the "None" value in the "Permissions" section in the "Edit Project" page

  Scenario: Administrator can create a new project: The "Initial Permissions" property is set to the "All Normal Users can manage cases" value
    Given The "New Project" page is shown
    When The user enters the project details in the "Create New Project" page:
      | Project Name       | Initial Permissions               |
      | FogBugz 5k Rewrite | All Normal Users can manage cases |
    And The user clicks the "OK" button in the "Create New Project" page
    And The user is redirected to the "Edit" page
    And The user clicks the "OK" button in the "Edit Project" page
    Then The user is redirected to the "Projects" page
    # NOTE: The "Primary Contact" is the root user — the one who created the current customer instance (tenant).
    And The following projects are listed in the "Projects" table in the "Projects" page in the following order:
      | Can Edit | Can Delete | Project            | Primary Contact | Project Groups | Workflow         | Description                |
      | true     | true       | FogBugz 5k Rewrite | Administrator   |                | Default Workflow |                            |
      | true     | false      | Inbox              | Administrator   |                | Default Workflow | Inbox for FogBugz Autosort |
      | true     | true       | Onboarding Project | Administrator   |                | Default Workflow |                            |
    And The user clicks the "Edit" button for the "FogBugz 5k Rewrite" project row in the "Projects" table in the "Projects" page
    And The user is redirected to the "Edit" page
    And The user clicks the "Edit Permissions" link in the "Edit Project" page
    And The "Permissions" section is shown in the "Edit Project" page
    And The following normal users and normal user groups are listed in the "Normal Users" table in the "Permissions" section in the "Edit Project" page in the following order:
      | Remove | Type       | Name                | Read  | Modify | Admin |
      | false  | User Group | Site Administrators | false | false  | true  |
      | true   | User Group | All Normal Users    | false | true   | false |
    And The following community users and community user groups are listed in the "Community Users" table in the "Permissions" section in the "Edit Project" page in the following order:
      | Remove | Type | Name | Submit Cases |
    And The "Anonymous Users" permissions are set to the "None" value in the "Permissions" section in the "Edit Project" page
