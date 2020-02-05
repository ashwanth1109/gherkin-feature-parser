@NotAutomated
@JIRA-Key-MANUSCRIPT-31027
@Planner
Feature: Planner - View Options - Filter By Project Area

  Scenario: User can filter planner by project area
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following project areas exist:
      | Project | Can Delete | Area | Primary Contact |
      | Ninja   | true       | Ahou | Administrator   |
      | Ninja   | true       | Miro | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name | Completion Date | Backlog | Start Date | Start Date Note |
      | Ninja   | false        | true         | Hurricane      | 5/16/2022       | false   | 5/15/2022  | It starts soon  |
    And The following planners exist:
      | Planner    | Milestones                | Projects                  |
      | My planner | Hurricane, More resources | Onboarding Project, Ninja |
    And The following cases exist:
      | ID | Title | Status   | Project            | Project Area | Milestone      |
      | 17 | R     | Resolved | Ninja              | Ahou         | Hurricane      |
      | 18 | A     | Active   | Ninja              | Ahou         | Hurricane      |
      | 19 | C     | Closed   | Ninja              | Miro         | Hurricane      |
      | 20 | D     | Resolved | Onboarding Project | Guidelines   | More resources |
      | 21 | E     | Active   | Onboarding Project | Guidelines   | More resources |
      | 22 | F     | Closed   | Onboarding Project | Guidelines   | More resources |
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Show View Options" link in the "Planner" page
    And The user enters the following details in the "View Options" dialog:
      | Filter by Area |
      | Ninja: Ahou    |
    Then The "Onboarding Project" milestone has "Only showing cases in Ninja: Ahou" warn message in the "Planner" page
    And The "Hurricane" milestone has "Only showing cases in Ninja: Ahou" warn message in the "Planner" page
    And The following cases are shown in the "Hurricane" milestone in the "Planner" page:
      | R |
      | A |
    And The following cases are shown in the "More resources" milestone in the "Planner" page:
      |  |
