@NotAutomated
@JIRA-Key-MANUSCRIPT-31482
@Planner
Feature: Planner - Kanban - View Remaining Time Aggregation

  Scenario: User can see remaining time summary for all cases in the kanban column
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
      | Case | Title                        | Project | Milestone | Estimate: remaining | Kanban Column |
      | 17   | Case in onboarding project   | Ninja   | Hurricane | 2 hours             | Doing         |
      | 18   | Case in onboarding project 2 | Ninja   | Hurricane | 3 hours             | Doing         |
      | 19   | Case in onboarding project 3 | Ninja   | Hurricane | 2 hours             | Done          |
      | 20   | Case in onboarding project 4 | Ninja   | Hurricane | 3 hours             | Done          |
    When The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Open kanban view" button in the "Hurricane" milestone in the "Planner" page
    And The "Kanban" page is shown
    Then The following details are shown in the "Doing" column:
      | Cases | Hours remaining |
      | 2     | 5 hours         |
    And The following details are shown in the "Done" column:
      | Cases | Hours remaining |
      | 2     | 5 hours         |
