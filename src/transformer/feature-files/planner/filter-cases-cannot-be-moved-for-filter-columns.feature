@NotAutomated
@JIRA-Key-MANUSCRIPT-31439
@Planner
Feature: Planner - Filter - Cases cannot be moved for Filter Columns

  Scenario: User cannot drag and drop cases to filter columns in planners
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name | Completion Date | Backlog | Start Date | Start Date Note |
      | Ninja   | true         | false        | Hurricane      | 5/16/2022       | false   | 5/15/2022  | It starts soon  |
    And The following planners exist:
      | Planner    | Milestones | Projects | Filter Columns |
      | My planner | Hurricane  | Ninja    | Inbox          |
    And The following cases exist:
      | ID | Title | Status | Project | Milestone |
      | 17 | BugA  | Active | Ninja   | Hurricane |
    When The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user enters the following details for the "Hurricane" milestone in the "Planner" page:
      | Group By |
      | Status   |
    And The user enters the following details for the "Inbox" filter column in the "Planner" page:
      | Group By |
      | Status   |
    And The user drags the "BugA" case to the "Active" section of the "Inbox" filter column in the "Planner" page
    Then The following details are shown in the "Active" section in the "Hurricane" milestone in the "Planner" page:
      | ID | Title |
      | 17 | BugA  |
    And The "Cases cannot be moved to filter columns" warn message is shown
