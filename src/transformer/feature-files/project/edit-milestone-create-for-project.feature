@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29313
@Project
Feature: Project - Edit - Milestone - Create for project

  Scenario: Administrator can create a milestone for a project
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The user clicks the "Edit" button for the "Ninja" project in the "Projects" section
    And The "Edit" page is shown
    When The user clicks the "Create New Milestone" button in the "Milestones (this project)" table in the "Edit Project" page
    And The "New Milestone" dialog is opened
    And The user enters the following milestone details in the "Create New Milestone" dialog:
      | Milestone Name  | Completion Date | Backlog | Start Date | Start Date Note |
      | Learn shurikens | 5/16/2022       | false   | 5/15/2022  | It starts soon  |
    And The user clicks the "OK" button in the "Create New Milestone" dialog
    Then The "New Milestone" dialog is closed
    And The following milestones are listed in the "Milestones (this project)" table in the "Edit Project" page in the following order:
      | Edit | Deleted | Can Delete | Milestone Name  | Assignable | Backlog | Completion Date | Start Date                 |
      | true | false   | false      | Learn shurikens | true       | false   | 5/16/2022       | 5/15/2022 (It starts soon) |

  Scenario: Cannot set start date higher than end date for milestones
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The user clicks the "Edit" button for the "Ninja" project in the "Projects" section
    And The "Edit" page is shown
    When The user clicks the "Create New Milestone" button in the "Milestones (this project)" table in the "Edit Project" page
    And The "New Milestone" dialog is opened
    And The user enters the following milestone details in the "Create New Milestone" dialog:
      | Milestone Name  | Completion Date | Backlog | Start Date | Start Date Note             |
      | Learn shurikens | 5/16/2022       | false   | 5/15/2024  | It starts after completion? |
    And The user clicks the "OK" button in the "Create New Milestone" dialog
    Then The "Completion Date" field is highlighted as an error in the "Create New Milestone" dialog
    And The "Completion Date" field has the "Start date is higher than end date" error message in the "Create New Milestone" dialog