@NotAutomated
@JIRA-Key-MANUSCRIPT-31470
@Planner
Feature: Planner - Kanban - Case - Change Priority

  Background:
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
    And The following cases exist:
      | ID | Title | Status   | Project | Milestone | Priority     |
      | 17 | BugR  | Resolved | Ninja   | Hurricane | 1 - Must Fix |
      | 18 | BugA  | Active   | Ninja   | Hurricane | 1 - Must Fix |
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Open kanban view" button in the "Hurricane" milestone in the "Planner" page
    And The "Kanban" page is shown

  Scenario: Change active bug priority through action dropdown in kanban
    When The user clicks the "Priority" icon for the "BugA" case in the "Planned Cases" column
    And The user selects the "3 - Must Fix" option from the "Change Priority" dropdown
    Then The following cases are shown in the "Planned Cases" column:
      | ID | Title | Priority     |
      | 18 | BugA  | 3 - Must Fix |
    And The user clicks the "BugA" case in the "Planned Cases" column
    And The following case details are shown in the "View Active Case" dialog:
      | ID | Title | Priority     |
      | 18 | BugA  | 3 - Must Fix |

  Scenario: Change resolved bug priority through action dropdown in kanban
    When The user clicks the "Priority" icon for the "BugR" case in the "Planned Cases" column
    And The user selects the "3 - Must Fix" option from the "Change Priority" dropdown
    Then The following cases are shown in the "Planned Cases" column:
      | ID | Title | Priority     |
      | 17 | BugR  | 3 - Must Fix |
    And The user clicks the "BugR" case in the "Planned Cases" column
    And The following case details are shown in the "View Resolved Case" dialog:
      | ID | Title | Priority     |
      | 17 | BugR  | 3 - Must Fix |
