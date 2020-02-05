@NotAutomated
@JIRA-Key-MANUSCRIPT-31453
@Planner
Feature: Planner - Kanban - Group By None - Backlog Order

  Scenario: Grouping by none allows changing backlog order in kanban
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
      | 18 | BugA  | Active   | Ninja   | Hurricane | 3 - Must Fix | Administrator   |
    And The user clicks the "My planner" menu item in the sidebar menu
    And The user clicks the "Open kanban view" button in the "Hurricane" milestone in the "Planner" page
    When The user enters the following details for the "Planned Cases" column:
      | Group By |
      | None     |
    And The following cases are shown in the "Cases" section in the "Planned Cases" column:
      | ID | Title | Priority     |
      | 17 | BugR  | 1 - Must Fix |
      | 18 | BugA  | 3 - Must Fix |
    And The user drags the "BugA" case to the top of the "Cases" section in the "Planned Cases" column
    And The user clicks the "BugA" case in the "Planned Cases" column
    Then The following case details are shown in the "View Active Case" dialog:
      | Backlog Order |
      | 1: BugA       |
