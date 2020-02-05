@NotAutomated
@JIRA-Key-MANUSCRIPT-30977
@Planner
Feature: Planner - Case - Search - Suggestions limit is 15

  Scenario: Only 15 cases are shown in planner case search
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
      | Case | Title                      | Project | Milestone |
      | 17   | Case in onboarding project | Ninja   | Hurricane |
      | 18   | Another 18                 | Ninja   | Hurricane |
      | 19   | Another 19                 | Ninja   | Hurricane |
      | 20   | Another 20                 | Ninja   | Hurricane |
      | 21   | Another 21                 | Ninja   | Hurricane |
      | 22   | Another 22                 | Ninja   | Hurricane |
      | 23   | Another 23                 | Ninja   | Hurricane |
      | 24   | Another 24                 | Ninja   | Hurricane |
      | 25   | Another 25                 | Ninja   | Hurricane |
      | 26   | Another 26                 | Ninja   | Hurricane |
      | 27   | Another 27                 | Ninja   | Hurricane |
      | 28   | Another 28                 | Ninja   | Hurricane |
      | 29   | Another 29                 | Ninja   | Hurricane |
      | 30   | Another 30                 | Ninja   | Hurricane |
      | 31   | Another 31                 | Ninja   | Hurricane |
      | 32   | Another 32                 | Ninja   | Hurricane |
      | 33   | Another 33                 | Ninja   | Hurricane |
      | 34   | Another 34                 | Ninja   | Hurricane |
      | 35   | Another 35                 | Ninja   | Hurricane |
      | 36   | Another 36                 | Ninja   | Hurricane |
      | 37   | Another 37                 | Ninja   | Hurricane |
      | 38   | Another 38                 | Ninja   | Hurricane |
      | 39   | Another 39                 | Ninja   | Hurricane |
      | 40   | Another 40                 | Ninja   | Hurricane |
    When The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Add" button in the "Cases" section in the "Hurricane" milestone in the "Planner" page
    And The user enters the "Another" search string in the search box in the "Add New Case" dialog in the "Planner" page
    Then The following cases are listed in the "Add New Case" dialog in the "Planner" page:
      | ID | Title      | Project |
      | 32 | Another 32 | Ninja   |
      | 31 | Another 31 | Ninja   |
      | 30 | Another 30 | Ninja   |
      | 29 | Another 29 | Ninja   |
      | 28 | Another 28 | Ninja   |
      | 27 | Another 27 | Ninja   |
      | 26 | Another 26 | Ninja   |
      | 25 | Another 25 | Ninja   |
      | 24 | Another 24 | Ninja   |
      | 23 | Another 23 | Ninja   |
      | 22 | Another 22 | Ninja   |
      | 21 | Another 21 | Ninja   |
      | 20 | Another 20 | Ninja   |
      | 19 | Another 19 | Ninja   |
      | 18 | Another 18 | Ninja   |
