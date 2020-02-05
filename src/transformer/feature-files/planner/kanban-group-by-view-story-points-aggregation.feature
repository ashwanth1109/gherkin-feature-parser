@NotAutomated
@JIRA-Key-MANUSCRIPT-31458
@Planner
Feature: Planner - Kanban - Group By - View Story Points Aggregation

  Scenario Outline: User can see story points per group in kanban
    Given The user is logged in as Administrator
    And The following users exist:
      | Full name       | Email                       | Account Type | Status   | Password |
      | User Under Test | user-under-test@fogbugz.com | Normal       | Inactive | test1234 |
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
      | Samurai      | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name | Completion Date | Backlog | Start Date | Start Date Note |
      | Ninja   | true         | false        | Hurricane      | 5/16/2022       | false   | 5/15/2022  | It starts soon  |
    And The following planners exist:
      | Planner    | Milestones | Projects |
      | My planner | Hurricane  | Ninja    |
    And The following cases exist:
      | ID | Title | Status   | Project | Milestone | Priority     | Assigned To     | Story Points |
      | 17 | BugR  | Resolved | Ninja   | Hurricane | 1 - Must Fix | Administrator   | 2            |
      | 18 | BugA  | Active   | Ninja   | Hurricane | 3 - Must Fix | Administrator   | 3            |
      | 19 | BugRA | Active   | Samurai | Hurricane | 2 - Must Fix | User Under Test | 4            |
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Open kanban view" button in the "Hurricane" milestone in the "Planner" page
    When The user enters the following details for the "Planned Cases" column:
      | Group By   |
      | <Group By> |
    Then The following details are shown in the "<Group Name>" section in the "Planned Cases" column:
      | Cases         | pts                  |
      | <Group Cases> | <Group Story Points> |
    And The following details are shown in the "Planned Cases" column:
      | Cases | pts |
      | 3     | 9   |
    Examples:
      | Group By    | Group Name    | Group Cases | Group Story Points |
      | None        | Cases         | 3           | 9                  |
      | Project     | Ninja         | 2           | 5                  |
      | Priority    | 2 - Must Fix  | 1           | 4                  |
      | Assigned To | Administrator | 2           | 5                  |
