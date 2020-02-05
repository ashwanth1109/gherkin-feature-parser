@NotAutomated
@JIRA-Key-MANUSCRIPT-31436
@Planner
Feature: Planner - Case - Drag and Drop between milestones

  Scenario: User can drag and drop cases between milestones in the planenr
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
    And The following cases exist:
      | ID | Title | Status   | Project | Milestone |
      | 17 | BugR  | Resolved | Ninja   | Hurricane |
      | 18 | BugA  | Active   | Ninja   | Hurricane |
      | 19 | BugAS | Active   | Ninja   | Swords    |
    When The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user enters the following details for the "Hurricane" milestone in the "Planner" page:
      | Group By |
      | Status   |
    And The user enters the following details for the "Swords" milestone in the "Planner" page:
      | Group By |
      | Status   |
    And The user drags the "BugA" case to the "Active" section of the "Swords" milestone in the "Planner" page
    Then The following details are shown in the "Active" section in the "Swords" milestone in the "Planner" page:
      | ID | Title | Priority     |
      | 18 | BugA  | 1 - Must Fix |
      | 19 | BugAS | 1 - Must Fix |
