@NotAutomated
@JIRA-Key-MANUSCRIPT-31048
@Planner
Feature: Planner - Case - Group By Assigned To - Backlog Order

  Scenario: Grouping by "Assigned To" allows changing backlog order
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
      | 19 | BugC  | Closed   | Samurai | Hurricane | 2 - Must Fix | User Under Test |
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user enters the following details for the "Hurricane" milestone in the "Planner" page:
      | Group By    |
      | Assigned To |
    And The following cases are shown in the "Administrator" section in the "Hurricane" milestone in the "Planner" page:
      | ID | Title | Priority     |
      | 17 | BugR  | 1 - Must Fix |
      | 18 | BugA  | 3 - Must Fix |
    And The following cases are shown in the "User Under Test" section in the "Hurricane" milestone in the "Planner" page:
      | 19 | BugC | 2 - Must Fix |
    When The user drags the "BugA" case to the top of the "Administrator" section in the "Hurricane" milestone in the "Planner" page
    And The user clicks the "BugA" case in the "Hurricane" milestone in the "Planner" page
    Then The following case details are shown in the "View Active Case" dialog:
      | Backlog Order |
      | 1: BugA       |
