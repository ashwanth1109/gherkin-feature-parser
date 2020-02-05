@NotAutomated
@JIRA-Key-MANUSCRIPT-31056
@Planner
Feature: Planner - Case - Group By Priority

  Scenario: Grouping by "Priority" groups by priority
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
      | ID | Title | Status   | Project | Milestone | Priority     | Assigned To     |
      | 17 | BugR  | Resolved | Ninja   | Hurricane | 1 - Must Fix | Administrator   |
      | 18 | BugA  | Active   | Ninja   | Hurricane | 1 - Must Fix | Administrator   |
      | 19 | BugC  | Closed   | Samurai | Hurricane | 2 - Must Fix | User Under Test |
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    When The user enters the following details for the "Hurricane" milestone in the "Planner" page:
      | Group By |
      | Priority |
    Then The following cases are shown in the "1 - Must Fix" section in the "Hurricane" milestone in the "Planner" page:
      | ID | Title | Priority     |
      | 17 | BugR  | 1 - Must Fix |
      | 18 | BugA  | 1 - Must Fix |
    And The following cases are shown in the "2 - Must Fix" section in the "Hurricane" milestone in the "Planner" page:
      | 19 | BugC | 2 - Must Fix |