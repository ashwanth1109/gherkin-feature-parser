@NotAutomated
@JIRA-Key-MANUSCRIPT-31448
@Planner
Feature: Planner - Kanban - Group By Project - Filter link

  Scenario: Grouping by "Project" has filter link in kanban
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
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Open kanban view" button in the "Hurricane" milestone in the "Planner" page
    When The user enters the following details for the "Planned Cases" column:
      | Group By |
      | Project  |
    And The user clicks the "Ninja" link in the "Planned Cases" column
    Then The "Filters" page is shown
    And The following filter is shown:
      | First 200 cases in milestone Hurricane containing kanban:=0 and (project:"Ninja") |
