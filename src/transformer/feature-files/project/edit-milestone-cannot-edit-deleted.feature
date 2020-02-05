@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29318
@Project
Feature: Project - Edit - Milestone - Cannot edit deleted

  Scenario: Administrator cannot edit a deleted milestone for this project
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name    | Completion Date | Backlog | Start Date | Start Date Note | Assignable | Deleted | Can Delete |
      | Ninja   | false        | true         | Throw a hurricane | 5/16/2022       | false   | 5/15/2022  | It starts soon  | false      | true    | false      |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The user clicks the "Edit" button for the "Ninja" project in the "Projects" section
    And The "Edit Project" page is shown
    And The user clicks the "Display Deleted and Unassignable Milestones" link in the "Milestones (this project)" table in the "Edit Project" page
    When The user clicks the "Edit" button for the "Throw a hurricane" milestone row in the "Milestones (this project)" table in the "Edit Project" page
    Then The "Can't Edit Deleted Milestone" dialog with a "Ninja: Throw a hurricane is deleted, so it cannot be edited." message is opened
    And The user clicks the "OK" button in the "Can't Edit Deleted Milestone" dialog
    And The "Can't Edit Deleted Milestone" dialog is closed
    And The following milestones are listed in the "Milestones (this project)" table in the "Edit Project" page in the following order:
      | Edit  | Deleted | Can Delete | Milestone Name    | Assignable | Backlog | Completion Date | Start Date                 |
      | false | true    | false      | Throw a hurricane | false      | false   | 5/16/2022       | 5/15/2022 (It starts soon) |

  Scenario: Administrator cannot edit a deleted milestone for all projects
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following milestones exist:
      | All Projects | Milestone Name    | Completion Date | Backlog | Start Date | Start Date Note | Assignable | Deleted | Can Delete |
      | true         | Throw a hurricane | 5/16/2022       | false   | 5/15/2022  | It starts soon  | false      | true    | false      |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The user clicks the "Edit" button for the "Ninja" project in the "Projects" section
    And The "Edit Project" page is shown
    And The user clicks the "Display Deleted and Unassignable Milestones" link in the "Milestones (all projects)" table in the "Edit Project" page
    When The user clicks the "Edit" button for the "Throw a hurricane" milestone row in the "Milestones (this project)" table in the "Edit Project" page
    Then The "Can't Edit Deleted Milestone" dialog with a "Ninja: Throw a hurricane is deleted, so it cannot be edited." message is opened
    And The user clicks the "OK" button in the "Can't Edit Deleted Milestone" dialog
    And The "Can't Edit Deleted Milestone" dialog is closed
    And The following milestones are listed in the "Milestones (all projects)" table in the "Edit Project" page in the following order:
      | Edit  | Deleted | Can Delete | Milestone Name    | Assignable | Backlog | Completion Date | Start Date                 |
      | false | true    | false      | Throw a hurricane | false      | false   | 5/16/2022       | 5/15/2022 (It starts soon) |
