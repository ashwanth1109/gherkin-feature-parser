@NotAutomated
@JIRA-Key-MANUSCRIPT-31486
@Planner
Feature: Planner - Kanban - Show Closed Cases

  Scenario: User enable showing closed cases for kanban columns
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name | Completion Date | Backlog | Start Date | Start Date Note |
      | Ninja   | false        | true         | Hurricane      | 5/16/2022       | false   | 5/15/2022  | It starts soon  |
    And The following planners exist:
      | Planner    | Milestones | Projects |
      | My planner | Hurricane  | Ninja    |
    And The following cases exist:
      | ID | Title | Status   | Project | Milestone |
      | 17 | R     | Resolved | Ninja   | Hurricane |
      | 18 | A     | Active   | Ninja   | Hurricane |
      | 19 | C     | Closed   | Ninja   | Hurricane |
    When The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Open kanban view" button in the "Hurricane" milestone in the "Planner" page
    And The "Kanban" page is shown
    And The user clicks the "Show Closed Cases" link in the "Planned Cases" column
    Then The following cases are shown in the "Planned Cases" column:
      | ID | Title |
      | 17 | R     |
      | 18 | A     |
      | 19 | C     |
