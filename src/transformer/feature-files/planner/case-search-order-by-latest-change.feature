@NotAutomated
@JIRA-Key-MANUSCRIPT-30982
@Planner
Feature: Planner - Case - Search - Order by Latest change

  Scenario: Most recently changed cases are shown first in planner case search
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
      | Case | Title     | Project | Milestone |
      | 17   | Another17 | Ninja   | Hurricane |
      | 18   | Another18 | Ninja   | Hurricane |
      | 19   | Another19 | Ninja   | Hurricane |
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Add" button in the "Cases" section in the "Hurricane" milestone in the "Planner" page
    And The user enters the "Another" search string in the search box in the "Add New Case" dialog in the "Planner" page
    Then The following cases are listed in the "Add New Case" dialog in the "Planner" page:
      | ID | Title     | Project |
      | 19 | Another19 | Ninja   |
      | 18 | Another18 | Ninja   |
      | 17 | Another17 | Ninja   |
