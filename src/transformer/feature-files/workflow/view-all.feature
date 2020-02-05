@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29110
@Workflow
Feature: Workflow - View all

  Scenario: Administrator can view all existing workflows, including the ones marked as deleted
    Given The user is logged in as Administrator
    And The following workflows exist:
      | Workflow Name      | Deleted |
      | 5k Rewrite         | false   |
      | 10k Rewrite        | false   |
      | 100k Rewrite       | false   |
      | 1M Rewrite         | false   |
      | Rewrite            | false   |
      | 5k Rewrite - Old   | false   |
      | 10k Rewrite - Old  | true    |
      | 100k Rewrite - Old | true    |
      | 1M Rewrite - Old   | true    |
      | Rewrite - Old      | false   |
    And The following projects exist:
      | Project Name                       | Primary Contact | Workflow         |
      | FogBugz (5k Rewrite)               | Administrator   | 5k Rewrite       |
      | FogBugz (5k Rewrite) - Iteration 1 | Administrator   | 5k Rewrite - Old |
      | FogBugz (5k Rewrite) - Iteration 2 | Administrator   | 5k Rewrite - Old |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    When The user clicks the "Customize Workflows" link in the "Workflows" section
    Then The "Workflows" page is shown
    And The following workflows are listed in the "Workflows" page in the following order:
      | Workflow Name      | Projects                                                               | Can Edit | Can Copy | Can Delete | Can Undelete |
      | 100k Rewrite       |                                                                        | true     | true     | true       | false        |
      | 10k Rewrite        |                                                                        | true     | true     | true       | false        |
      | 1M Rewrite         |                                                                        | true     | true     | true       | false        |
      | 5k Rewrite         | FogBugz (5k Rewrite)                                                   | true     | true     | false      | false        |
      | 5k Rewrite - Old   | FogBugz (5k Rewrite) - Iteration 1, FogBugz (5k Rewrite) - Iteration 2 | true     | true     | false      | false        |
      | Default Workflow   | Inbox, Onboarding Project                                              | true     | true     | false      | false        |
      | Rewrite            |                                                                        | true     | true     | true       | false        |
      | Rewrite - Old      |                                                                        | true     | true     | true       | false        |
      | 100k Rewrite - Old |                                                                        | false    | true     | false      | true         |
      | 10k Rewrite - Old  |                                                                        | false    | true     | false      | true         |
      | 1M Rewrite - Old   |                                                                        | false    | true     | false      | true         |
