@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29109
@Workflow
Feature: Workflow - Delete and Undelete

  Scenario: Administrator can delete an existing workflow that is not used by any projects
    Given The user is logged in as Administrator
    And The following workflows exist:
      | Workflow Name |
      | 5k Rewrite    |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    And The user clicks the "Customize Workflows" link in the "Workflows" section
    And The "Workflows" page is shown
    When The user clicks the "Delete" button for the "5k Rewrite" workflow row in the "Workflows" page
    Then The "Workflows" page is reloaded
    And The following workflows are listed in the "Workflows" page in the following order:
      | Workflow Name    | Projects                  | Can Edit | Can Copy | Can Delete | Can Undelete |
      | Default Workflow | Inbox, Onboarding Project | true     | true     | false      | false        |
      | 5k Rewrite       |                           | false    | true     | false      | true         |

  Scenario: Administrator cannot delete an existing workflow that is used by a project
    Given The user is logged in as Administrator
    And The following workflows exist:
      | Workflow Name |
      | 5k Rewrite    |
    And The following projects exist:
      | Project Name         | Primary Contact | Workflow   |
      | FogBugz (5k Rewrite) | Administrator   | 5k Rewrite |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    And The user clicks the "Customize Workflows" link in the "Workflows" section
    When The "Workflows" page is shown
    Then The following workflows are listed in the "Workflows" page in the following order:
      | Workflow Name    | Projects                  | Can Edit | Can Copy | Can Delete | Can Undelete |
      | 5k Rewrite       | FogBugz (5k Rewrite)      | true     | true     | false      | false        |
      | Default Workflow | Inbox, Onboarding Project | true     | true     | false      | false        |

  Scenario: Administrator can undelete a deleted workflow
    Given The user is logged in as Administrator
    And The following workflows exist:
      | Workflow Name | Deleted |
      | 5k Rewrite    | true    |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    And The user clicks the "Customize Workflows" link in the "Workflows" section
    And The "Workflows" page is shown
    When The user clicks the "Undelete" button for the "5k Rewrite" workflow row in the "Workflows" page
    Then The "Workflows" page is reloaded
    And The following workflows are listed in the "Workflows" page in the following order:
      | Workflow Name    | Projects                  | Can Edit | Can Copy | Can Delete | Can Undelete |
      | 5k Rewrite       |                           | true     | true     | true       | false        |
      | Default Workflow | Inbox, Onboarding Project | true     | true     | false      | false        |
