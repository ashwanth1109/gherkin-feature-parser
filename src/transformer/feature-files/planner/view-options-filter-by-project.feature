@NotAutomated
@JIRA-Key-MANUSCRIPT-31026
@Planner
Feature: Planner - View Options - Filter By Project

  Scenario: User can filter planner by project
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name | Completion Date | Backlog | Start Date | Start Date Note |
      | Ninja   | false        | true         | Hurricane      | 5/16/2022       | false   | 5/15/2022  | It starts soon  |
    And The following planners exist:
      | Planner    | Milestones                | Projects                  |
      | My planner | Hurricane, More resources | Onboarding Project, Ninja |
    And The following cases exist:
      | ID | Title | Status   | Project            | Milestone      |
      | 17 | R     | Resolved | Ninja              | Hurricane      |
      | 18 | A     | Active   | Ninja              | Hurricane      |
      | 19 | C     | Closed   | Ninja              | Hurricane      |
      | 20 | D     | Resolved | Onboarding Project | More resources |
      | 21 | E     | Active   | Onboarding Project | More resources |
      | 22 | F     | Closed   | Onboarding Project | More resources |
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Show View Options" link in the "Planner" page
    And The user unchecks the "Ninja" checkbox in the "Filter by Project" section in the "View Options" dialog
    Then The "Hurricane" milestone has "Ninja is currently hidden" warn message in the "Planner" page
    And The following cases are shown in the "Hurricane" milestone in the "Planner" page:
      | ID | Title |
      |    |       |
    And The following cases are shown in the "More resources" milestone in the "Planner" page:
      | ID | Title |
      | 20 | D     |
      | 21 | E     |
      | 22 | F     |
