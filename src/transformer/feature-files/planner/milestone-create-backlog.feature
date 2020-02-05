@NotAutomated
@JIRA-Key-MANUSCRIPT-31433
@Planner
Feature: Planner - Milestone - Create - Backlog

  Scenario: User can add a new
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name | Completion Date | Backlog | Start Date | Start Date Note |
      | Ninja   | false        | true         | Backlog        | 5/16/2022       | true    | 5/15/2022  | It starts soon  |
    When The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "Onboarding planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Add Milestone" button in the "Planner" page
    And The user selects the "Ninja: Backlog" milestone in the "Add Milestone" dropdown in the "Planner" page
    Then The following details are shown in the "Planner" page:
      | Planner            | Milestones |
      | Onboarding planner | Backlog    |
