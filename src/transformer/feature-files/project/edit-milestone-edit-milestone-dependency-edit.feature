@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29580
@Project
Feature: Project - Edit - Milestone - Edit - Milestone Dependency - Edit

  Scenario: Administrator can edit milestone dependency for this project
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Inbox        | Administrator   |
    And The following milestones exist:
      | Project | Edit | Can Delete | This Project | Milestone Name | Assignable | Backlog | Completion Date | Start Date                 | Milestone Dependencies |
      | Inbox   | true | true       | true         | Milestone-1    | Yes        | No      | 5/16/2022       | 5/15/2022 (It starts soon) |                        |
      | Inbox   | true | true       | true         | Milestone-2    | Yes        | No      | 5/16/2022       | 5/15/2022 (It starts soon) | Milestone-1            |
      | Inbox   | true | true       | true         | Milestone-3    | Yes        | No      | 5/16/2022       | 5/15/2022 (It starts soon) |                        |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The user clicks the "Edit" button for the "Inbox" project in the "Projects" section
    And The "Edit Project" page is shown
    And The user clicks the "Edit" button for the "Milestone-2" milestone row in the "Milestones (this project)" table in the "Edit Project" page
    And The "Edit Milestone" dialog is opened
    When The user clicks the "Add New Dependency" button in the "Milestone Dependencies" table in the "Edit Milestone" dialog
    And The user selects the "Inbox" project in the "Project" dropdown in the "Milestone Dependencies" table in the "Edit Milestone" dialog
    And The user selects the "Milestone-3" milestone in the "Milestone" dropdown in the "Milestone Dependencies" table in the "Edit Milestone" dialog
    And The user clicks the "Check" button in the "Milestone Dependencies" table in the "Edit Milestone" dialog
    And The user clicks the "OK" button in the "Edit Milestone" dialog
    Then The "Edit Milestone" dialog is closed
    And The following milestones are listed in the "Milestones (this project)" table in the "Edit Project" page in the following order:
      | Edit | Can Delete | Milestone Name | Assignable | Backlog | Completion Date | Start Date                 | Milestone Dependencies   |
      | true | true       | Milestone-1    | Yes        | No      | 5/16/2022       | 5/15/2022 (It starts soon) |                          |
      | true | true       | Milestone-2    | Yes        | No      | 5/16/2022       | 5/15/2022 (It starts soon) | Milestone-1, Milestone-3 |
      | true | true       | Milestone-3    | Yes        | No      | 5/16/2022       | 5/15/2022 (It starts soon) |                          |


  Scenario: Administrator can edit milestone dependency for all projects
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Inbox        | Administrator   |
    And The following milestones exist:
      | Project | Edit | Can Delete | All Projects | Milestone Name | Assignable | Backlog | Completion Date | Start Date                 | Milestone Dependencies |
      | Inbox   | true | true       | true         | Milestone-1    | Yes        | No      | 5/16/2022       | 5/15/2022 (It starts soon) |                        |
      | Inbox   | true | true       | true         | Milestone-2    | Yes        | No      | 5/16/2022       | 5/15/2022 (It starts soon) | Milestone-1            |
      | Inbox   | true | true       | true         | Milestone-3    | Yes        | No      | 5/16/2022       | 5/15/2022 (It starts soon) |                        |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The user clicks the "Edit" button for the "Inbox" project in the "Projects" section
    And The "Edit Project" page is shown
    And The user clicks the "Edit" button for the "Milestone-2" milestone row in the "Milestones (all projects)" table in the "Edit Project" page
    And The "Edit Milestone" dialog is opened
    When The user clicks the "Add New Dependency" button in the "Milestone Dependencies" table in the "Edit Milestone" dialog
    And The user selects the "Inbox" project in the "Project" dropdown in the "Milestone Dependencies" table in the "Edit Milestone" dialog
    And The user selects the "Milestone-3" milestone in the "Milestone" dropdown in the "Milestone Dependencies" table in the "Edit Milestone" dialog
    And The user clicks the "Check" button in the "Milestone Dependencies" table in the "Edit Milestone" dialog
    And The user clicks the "OK" button in the "Edit Milestone" dialog
    Then The "Edit Milestone" dialog is closed
    And The following milestones are listed in the "Milestones (all projects)" table in the "Edit Project" page in the following order:
      | Edit | Can Delete | Milestone Name | Assignable | Backlog | Completion Date | Start Date                 | Milestone Dependencies   |
      | true | true       | Milestone-1    | Yes        | No      | 5/16/2022       | 5/15/2022 (It starts soon) |                          |
      | true | true       | Milestone-2    | Yes        | No      | 5/16/2022       | 5/15/2022 (It starts soon) | Milestone-1, Milestone-3 |
      | true | true       | Milestone-3    | Yes        | No      | 5/16/2022       | 5/15/2022 (It starts soon) |                          |
