@NotAutomated
@JIRA-Key-MANUSCRIPT-31067
@Planner
Feature: Planner - Milestone - Remove

  Scenario: User can remove milestones from planners
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
    When The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Close" button in the "Hurricane" milestone in the "Planner" page
    Then The following planners exist:
      | Planner    | Milestones | Projects |
      | My planner |            | Ninja    |
    And The "Add milestones" message is shown in the "Planner" page
