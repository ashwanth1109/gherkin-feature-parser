@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29315
@Project
Feature: Project - Edit - Milestone - Edit


  Scenario: Administrator can edit a milestone for this project
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following milestones exist:
      | Project | This Project | Milestone Name    | Completion Date | Backlog | Start Date | Start Date Note | Assignable | Deleted | Can Delete |
      | Ninja   | true         | Throw a hurricane | 5/16/2022       | No      | 5/15/2022  | It starts soon  | No         | false   | true       |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The user clicks the "Edit" button for the "Ninja" project in the "Projects" section
    And The "Edit" page is shown
    And The user clicks the "Edit" button for the "Throw a hurricane" milestone row in the "Milestones (this project)" table in the "Edit Project" page
    And The "Edit Milestone" dialog is opened
    When The user enters the following milestone details in the "Edit Milestone" dialog:
      | Milestone Name | Completion Date | Backlog | Start Date | Start Date Note | Assignable |
      | Mark 4         | 5/16/2026       | Yes     | 5/15/2026  | Not so soon     | Yes        |
    And The user clicks the "OK" button in the "Edit Milestone" dialog
    Then The following milestones are listed in the "Milestones (this project)" table in the "Edit Project" page in the following order:
      | Edit | Deleted | Can Delete | Milestone Name | Assignable | Backlog | Completion Date | Start Date              |
      | true | false   | false      | Mark 4         | Yes        | Yes     | 5/16/2026       | 5/15/2026 (Not so soon) |

  Scenario: Administrator can edit a milestone for all projects
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
      | Banana       | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name    | Completion Date | Backlog | Start Date | Start Date Note | Assignable | Deleted | Can Delete |
      | Ninja   | true         | false        | Throw a hurricane | 5/16/2022       | No      | 5/15/2022  | It starts soon  | No         | false   | true       |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The user clicks the "Edit" button for the "Ninja" project in the "Projects" section
    And The "Edit" page is shown
    And The user clicks the "Edit" button for the "Throw a hurricane" milestone row in the "Milestones (all projects)" table in the "Edit Project" page
    And The "Edit Milestone" dialog is opened
    When The user enters the following milestone details in the "Edit Milestone" dialog:
      | Milestone Name | Completion Date | Backlog | Start Date | Start Date Note | Assignable |
      | Mark 4         | 5/16/2026       | Yes     | 5/15/2026  | Not so soon     | Yes        |
    And The user clicks the "OK" button in the "Edit Milestone" dialog
    Then The following milestones are listed in the "Milestones (all projects)" table in the "Edit Project" page in the following order:
      | Edit | Deleted | Can Delete | Milestone Name | Assignable | Backlog | Completion Date | Start Date              |
      | true | false   | false      | Mark 4         | Yes        | Yes     | 5/16/2026       | 5/15/2026 (Not so soon) |
    And The user clicks the "OK" button in the "Edit Project" page
    And The "Projects" page is shown
    And The user clicks the "Edit" button for the "Banana" project in the "Projects" section
    And The "Edit" page is shown
    And The following milestones are listed in the "Milestones (all projects)" table in the "Edit Project" page in the following order:
      | Edit | Deleted | Can Delete | Milestone Name | Assignable | Backlog | Completion Date | Start Date              |
      | true | false   | false      | Mark 4         | Yes        | Yes     | 5/16/2026       | 5/15/2026 (Not so soon) |
