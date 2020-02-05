@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29578
@Project
Feature: Project - Edit - Milestone - Edit - Milestone Dependency - View All

  Scenario: Administrator can view all milestones with Dependencies of a project
    Given The user is logged in as Administrator
    And The following projects exist:
     | Project Name | Primary Contact |
     | Inbox        | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name  | Completion Date | Backlog | Start Date | Start Date Note       | Milestone Dependencies |
      | Inbox   | true         | false        | Milestone-1     | 5/16/2022       | false   | 5/15/2022  | It starts not so soon |                        |
      | Inbox   | false        | true         | Milestone-2     | 5/16/2022       | false   | 5/15/2022  | It starts soon        | Milestone-1            |
      | Inbox   | true         | false        | Milestone-3     | 5/16/2022       | false   | 5/15/2022  | It starts soon        | Milestone-2            |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    When The user clicks the "Edit" button for the "Inbox" project in the "Projects" section
    Then The "Edit Project" page is shown
    And The following milestones are listed in the "Milestones (all projects)" table in the "Edit Project" page in the following order:
      | Edit | Can Delete | Milestone Name | Assignable | Backlog | Completion Date | Start Date                        | Milestone Dependencies |
      | true | false      | Milestone-1    | true       | false   | 5/16/2022       | 5/15/2022 (It starts not so soon) |                        |
      | true | false      | Milestone-3    | true       | false   | 5/16/2022       | 5/15/2022 (It starts soon)        | Milestone-2            |
    And The following milestones are listed in the "Milestones (this project)" table in the "Edit Project" page in the following order:
      | Edit | Can Delete | Milestone Name  | Assignable | Backlog | Completion Date | Start Date                 | Milestone Dependencies |
      | true | false      | Milestone-2     | true       | false   | 5/16/2022       | 5/15/2022 (It starts soon) | Milestone-1            |
