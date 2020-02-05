@NotAutomated
@JIRA-Key-MANUSCRIPT-30593
@Planner
Feature: Planner - Case in this milestone

  Scenario: Adding a case from one milestone to another in planner case search
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
      | 18   | Another                    | Ninja   | Undecided |
    When The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Add" button in the "Cases" section in the "Hurricane" milestone in the "Planner" page
    And The user enters the "Another" search string in the search box in the "Add New Case" dialog in the "Planner" page
    And The user clicks the "Another" row in the "Add New Case" dialog in the "Planner" page
    Then The following cases are shown in the "Hurricane" milestone in the "Planner" page:
      | ID | Title                      |
      | 17 | Case in onboarding project |
      | 18 | Another                    |
    And The user clicks the "Another" case in the "Hurricane" milestone in the "Planner" page
    And The following case details are shown in the "View Active Case" dialog:
      | ID | Title   | Milestone |
      | 18 | Another | Hurricane |


