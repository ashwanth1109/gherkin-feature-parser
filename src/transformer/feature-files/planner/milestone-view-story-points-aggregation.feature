@NotAutomated
@JIRA-Key-MANUSCRIPT-31070
@Planner
Feature: Planner - Milestone - View Story Points Aggregation

  Scenario Outline: User can see story points per group in the milestone
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
      | ID | Title | Status   | Project | Milestone | Priority     | Assigned To     | Kanban Column | Story Points |
      | 17 | BugR  | Resolved | Ninja   | Hurricane | 1 - Must Fix | Administrator   | Doing         | 2            |
      | 18 | BugA  | Active   | Ninja   | Hurricane | 3 - Must Fix | Administrator   | Doing         | 3            |
      | 19 | BugC  | Closed   | Samurai | Hurricane | 2 - Must Fix | User Under Test | Done          | 4            |
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    When The user enters the following details for the "Hurricane" milestone in the "Planner" page:
      | Group By   |
      | <Group By> |
    Then The following details are shown in the "<Group Name>" section in the "Hurricane" milestone in the "Planner" page:
      | Cases         | pts                  |
      | <Group Cases> | <Group Story Points> |
    And The following details are shown in the "Hurricane" milestone in the "Planner" page:
      | Cases | pts |
      | 3     | 9   |
    Examples:
      | Group By      | Group Name    | Group Cases | Group Story Points |
      | None          | Cases         | 3           | 9                  |
      | Kanban Column | Doing         | 2           | 5                  |
      | Project       | Ninja         | 2           | 5                  |
      | Priority      | 2 - Must Fix  | 1           | 4                  |
      | Status        | Active        | 1           | 3                  |
      | Assigned To   | Administrator | 2           | 5                  |
