@NotAutomated
@JIRA-Key-MANUSCRIPT-31441
@Planner
Feature: Planner - Kanban - Planned Cases Doing Done

  Scenario: User can view kanban columns in kanban page
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name | Completion Date | Backlog | Start Date | Start Date Note |
      | Ninja   | false        | true         | Hurricane      | 5/16/2022       | false   | 5/15/2022  | It starts soon  |
    And The following cases exist:
      | ID | Title | Status   | Project | Milestone |
      | 17 | BugR  | Resolved | Ninja   | Hurricane |
      | 18 | BugA  | Active   | Ninja   | Hurricane |
    And The following planners exist:
      | Planner    | Milestones |
      | My planner | Hurricane  |
    When The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Open kanban view" button in the "Hurricane" milestone in the "Planner" page
    Then The "Kanban" page is shown
    And The following cases are shown in the "Planned Cases" column:
      | ID | Title | Status   |
      | 17 | BugR  | Resolved |
      | 18 | BugA  | Active   |
    And The following cases are shown in the "Doing" column:
      | ID | Title | Status |
      |    |       |        |
    And The following cases are shown in the "Done" column:
      | ID | Title | Status |
      |    |       |        |
