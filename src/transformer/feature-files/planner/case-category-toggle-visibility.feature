@NotAutomated
@JIRA-Key-MANUSCRIPT-31059
@Planner
Feature: Planner - Case - Category - Toggle Visibility

  Scenario Outline: User can collapse groups in milestones in planners
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
      | ID | Title | Status   | Project | Milestone | Priority     | Assigned To     | Kanban Column |
      | 17 | BugR  | Resolved | Ninja   | Hurricane | 1 - Must Fix | Administrator   | Doing         |
      | 18 | BugA  | Active   | Ninja   | Hurricane | 3 - Must Fix | Administrator   | Doing         |
      | 19 | BugC  | Closed   | Samurai | Hurricane | 2 - Must Fix | User Under Test | Done          |
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    When The user enters the following details for the "Hurricane" milestone in the "Planner" page:
      | Group By   |
      | <Group By> |
    And The user clicks the "-" button for the "<Group Name>" group in the "Hurricane" milestone in the "Planner" page
    Then The "<Group Name>" group is collapsed
    And The user clicks the "+" button for the "<Group Name>" group in the "Hurricane" milestone in the "Planner" page
    And The "<Group Name>" group is expanded
    Examples:
      | Group By      | Group Name    |
      | None          | Cases         |
      | Kanban Column | Doing         |
      | Project       | Ninja         |
      | Priority      | 1 - Must Fix  |
      | Status        | Active        |
      | Assigned To   | Administrator |
