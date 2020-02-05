@NotAutomated
@JIRA-Key-MANUSCRIPT-30980
@Planner
Feature: Planner - Case - Search - No results from Spam project area

  Scenario: Cases from project area SPAM are not visible in planner case search
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name | Completion Date | Backlog | Start Date | Start Date Note |
      | Ninja   | false        | true         | Hurricane      | 5/16/2022       | false   | 5/15/2022  | It starts soon  |
    And The following planners exist:
      | Planner    | Milestones | Projects |
      | My planner | Undecided  | Inbox    |
    And The following cases exist:
      | Case | Title        | Project | Project Area | Milestone |
      | 17   | probablyspam | Inbox   | Spam         | Undecided |
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Add" button in the "Cases" section in the "Undecided" milestone in the "Planner" page
    And The user enters the "probablyspam" search string in the search box in the "Add New Case" dialog in the "Planner" page
    Then The following cases are listed in the "Add New Case" dialog in the "Planner" page:
      | ID | Title | Project |
      |    |       |         |
