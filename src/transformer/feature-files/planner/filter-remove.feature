@NotAutomated
@JIRA-Key-MANUSCRIPT-31068
@Planner
Feature: Planner - Filter - Remove

  Scenario: User can remove filter columns from planners
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name | Completion Date | Backlog | Start Date | Start Date Note |
      | Ninja   | false        | true         | Hurricane      | 5/16/2022       | false   | 5/15/2022  | It starts soon  |
    And The following planners exist:
      | Planner    | Filter Columns |
      | My planner | Inbox          |
    When The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Close" button in the "Inbox" filter column in the "Planner" page
    Then The following planners exist:
      | Planner    | Filter Columns |
      | My planner |                |
    And The "Add milestones" message is shown in the "Planner" page
