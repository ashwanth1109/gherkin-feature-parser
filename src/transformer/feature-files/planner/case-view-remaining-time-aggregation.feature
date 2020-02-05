@NotAutomated
@JIRA-Key-MANUSCRIPT-30597
@Planner
Feature: Planner - Case - View Remaining Time Aggregation

  Scenario: User can see remaining time summary for all cases in the milestone
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
      | Case | Title                        | Project | Milestone | Estimate: remaining |
      | 17   | Case in onboarding project   | Ninja   | Hurricane | 2 hours             |
      | 18   | Case in onboarding project 2 | Ninja   | Hurricane | 3 hours             |
    When The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    Then The following details are shown in the "Cases" section in the "Hurricane" milestone in the "Planner" page:
      | Cases | Hours remaining |
      | 2     | 5 hours         |
