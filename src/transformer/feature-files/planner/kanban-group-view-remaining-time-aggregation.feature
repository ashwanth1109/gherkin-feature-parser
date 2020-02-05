@NotAutomated
@JIRA-Key-MANUSCRIPT-31457
@Planner
Feature: Planner - Kanban - Group - View Remaining Time Aggregation

  Scenario Outline: User can see remaining time per group in kanban
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
      | ID | Title | Status   | Project | Milestone | Priority     | Assigned To     | Estimate: remaining |
      | 17 | BugR  | Resolved | Ninja   | Hurricane | 1 - Must Fix | Administrator   | 2 hours             |
      | 18 | BugA  | Active   | Ninja   | Hurricane | 3 - Must Fix | Administrator   | 3 hours             |
      | 19 | BugRA | Active   | Samurai | Hurricane | 2 - Must Fix | User Under Test | 4 hours             |
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Open kanban view" button in the "Hurricane" milestone in the "Planner" page
    When The user enters the following details for the "Planned Cases" column:
      | Group By   |
      | <Group By> |
    Then The following details are shown in the "<Group Name>" section in the "Planned Cases" column:
      | Cases         | Hours remaining         |
      | <Group Cases> | <Group Remaining Hours> |
    And The following details are shown in the "Planned Cases" column:
      | Cases | Hours remaining |
      | 3     | 9 hours         |
    Examples:
      | Group By    | Group Name    | Group Cases | Group Remaining Hours |
      | None        | Cases         | 3           | 9 hours               |
      | Project     | Ninja         | 2           | 5 hours               |
      | Priority    | 2 - Must Fix  | 1           | 4 hours               |
      | Assigned To | Administrator | 2           | 5 hours               |
