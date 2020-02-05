@NotAutomated
@JIRA-Key-MANUSCRIPT-31444
@Planner
Feature: Planner - Kanban - Case - Drag and Drop between Kanban Columns

  Scenario: User can drag and drop cases between milestones in the planenr
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
      | ID | Title | Status   | Project | Milestone | Priority     | Assigned To   | Kanban Column |
      | 17 | BugR  | Resolved | Ninja   | Hurricane | 1 - Must Fix | Administrator | Done          |
      | 18 | BugA  | Active   | Ninja   | Hurricane | 3 - Must Fix | Administrator | Doing         |
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Open kanban view" button in the "Hurricane" milestone in the "Planner" page
    And The "Kanban" page is shown
    When The user drags the "BugR" case to the "Cases" group in the "Doing" column
    Then The following cases are shown in the "Doing" column:
      | ID | Title | Status   |
      | 18 | BugA  | Active   |
      | 17 | BugR  | Resolved |
    And The following cases are shown in the "Done" column:
      | ID | Title | Status |
      |    |       |        |
    And The user clicks the "BugR" case in the "Doing" column
    And The following case details are shown in the "View Resolved Case" dialog:
      | Kanban Column |
      | Doing         |

