@NotAutomated
@JIRA-Key-MANUSCRIPT-31435
@Planner
Feature: Planner - Milestone - Drag and Drop

  Scenario: User can reorder milestones in the planner
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
      | Samurai      | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name | Completion Date | Backlog | Start Date | Start Date Note |
      | Ninja   | true         | false        | Hurricane      | 5/16/2022       | false   | 5/15/2022  | It starts soon  |
      | Ninja   | true         | false        | Swords         | 5/16/2022       | false   | 5/15/2022  | It starts soon  |
    And The following planners exist:
      | Planner    | Milestones        | Projects |
      | My planner | Hurricane, Swords | Ninja    |
    When The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user drags the "Hurricane" milestone to the right of the "Swords" milestone in the "Planner" page
    Then The following details are shown in the "Planner" page:
      | Planner    | Milestones        |
      | My planner | Swords, Hurricane |
