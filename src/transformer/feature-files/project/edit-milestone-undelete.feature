@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29581
@Project
Feature: Project - Edit - Milestone - Edit - Milestone Dependency - Undelete

  Scenario: Administrator can undelete a deleted milestone for this project
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Inbox        | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name | Completion Date | Backlog | Start Date | Start Date Note | Assignable | Deleted | Can Delete |
      | Inbox   | false        | true         | Milestone-1    | 5/16/2022       | false   | 5/15/2022  | It starts soon  | false      | true    | false      |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The user clicks the "Edit" button for the "Inbox" project in the "Projects" section
    And The "Edit Project" page is shown
    And The user clicks the "Display Deleted and Unassignable Milestones" link in the "Milestones (this project)" table in the "Edit Project" page
    When The user clicks the "Undelete" button for the "Milestone-1" milestone row in the "Milestones (this project)" table in the "Edit Project" page
    Then The "Edit Project" page is reloaded
    And The following milestones are listed in the "Milestones (this project)" table in the "Edit Project" page in the following order:
      | Edit | Deleted | Can Delete | Milestone Name | Assignable | Backlog | Completion Date | Start Date                 |
      | true | false   | true       | Milestone-1    | false      | false   | 5/16/2022       | 5/15/2022 (It starts soon) |

  Scenario: Administrator can undelete a deleted milestone for all projects
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Inbox        | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name | Completion Date | Backlog | Start Date | Start Date Note | Assignable | Deleted | Can Delete |
      | Inbox   | true         | false        | Milestone-1    | 5/16/2022       | false   | 5/15/2022  | It starts soon  | false      | true    | false      |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The user clicks the "Edit" button for the "Inbox" project in the "Projects" section
    And The "Edit Project" page is shown
    And The user clicks the "Display Deleted and Unassignable Milestones" link in the "Milestones (all projects)" table in the "Edit Project" page
    When The user clicks the "Undelete" button for the "Milestone-1" milestone row in the "Milestones (all projects)" table in the "Edit Project" page
    Then The "Edit Project" page is reloaded
    And The following milestones are listed in the "Milestones (all projects)" table in the "Edit Project" page in the following order:
      | Edit | Deleted | Can Delete | Milestone Name | Assignable | Backlog | Completion Date | Start Date                 |
      | true | false   | true       | Milestone-1    | false      | false   | 5/16/2022       | 5/15/2022 (It starts soon) |
