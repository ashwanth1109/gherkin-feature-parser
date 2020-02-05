@NotAutomated
@JIRA-Key-MANUSCRIPT-31483
@Planner
Feature: Planner - Kanban - View Story Points Aggregation

  Scenario: User can see remaining story points summary for all cases in the kanban column
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
      | Case | Title                        | Project | Milestone | Story Points | Kanban Column |
      | 17   | Case in onboarding project   | Ninja   | Hurricane | 2            | Doing         |
      | 18   | Case in onboarding project 2 | Ninja   | Hurricane | 3            | Doing         |
      | 19   | Case in onboarding project 3 | Ninja   | Hurricane | 2            | Done          |
      | 20   | Case in onboarding project 4 | Ninja   | Hurricane | 3            | Done          |
    When The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Open kanban view" button in the "Hurricane" milestone in the "Planner" page
    And The "Kanban" page is shown
    And The user clicks the "Show View Options" link in the "Kanban" page
    And The user enters the following details in the "View Options" dialog:
      | Display      |
      | Story Points |
    Then The following details are shown in the "Doing" column:
      | Cases | pts |
      | 2     | 5   |
    And The following details are shown in the "Done" column:
      | Cases | pts |
      | 2     | 5   |
