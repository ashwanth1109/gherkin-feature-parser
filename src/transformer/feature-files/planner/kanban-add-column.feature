@NotAutomated
@JIRA-Key-MANUSCRIPT-31488
@Planner
Feature: Planner - Kanban - Add Column

  Scenario Outline: User can add a kanban column
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name | Completion Date | Backlog | Start Date | Start Date Note |
      | Ninja   | false        | true         | Hurricane      | 5/16/2022       | false   | 5/15/2022  | It starts soon  |
    And The following planners exist:
      | Planner    | Milestones | Projects |
      | My planner | Hurricane  | Ninja    |
    When The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Open kanban view" button in the "Hurricane" milestone in the "Planner" page
    And The "Kanban" page is shown
    And The user clicks the "Remove Kanban Column" button for the "<Column Name>" column
    And The user clicks the "Add Column" button in the "Kanban" page
    And The user clicks the "<Column Name>" item in the "Add Column" dropdown
    Then The following details are shown in the "Kanban" page:
      | Columns                    |
      | Planned Cases, Doing, Done |
    Examples:
      | Column Name |
      | Doing       |
      | Done        |

  Scenario: User cannot add an already added kanban column
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name | Completion Date | Backlog | Start Date | Start Date Note |
      | Ninja   | false        | true         | Hurricane      | 5/16/2022       | false   | 5/15/2022  | It starts soon  |
    And The following planners exist:
      | Planner    | Milestones | Projects |
      | My planner | Hurricane  | Ninja    |
    When The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Open kanban view" button in the "Hurricane" milestone in the "Planner" page
    And The "Kanban" page is shown
    And The user clicks the "Add Column" button in the "Kanban" page
    Then The following options are shown in the "Add Column" dropdown:
      | Doing has already been added |
      | Done has already been added  |
