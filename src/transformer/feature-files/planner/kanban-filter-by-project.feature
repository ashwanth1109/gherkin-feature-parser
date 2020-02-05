@NotAutomated
@JIRA-Key-MANUSCRIPT-31479
@Planner
Feature: Planner - Kanban - Filter By Project

  Scenario: User can filter kanban by project
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name | Completion Date | Backlog | Start Date | Start Date Note |
      | Ninja   | true         | false        | Hurricane      | 5/16/2022       | false   | 5/15/2022  | It starts soon  |
    And The following planners exist:
      | Planner    | Milestones                | Projects                  |
      | My planner | Hurricane, More resources | Onboarding Project, Ninja |
    And The following cases exist:
      | ID | Title | Status   | Project            | Milestone | Kanban Column |
      | 17 | R     | Resolved | Ninja              | Hurricane |               |
      | 18 | A     | Active   | Ninja              | Hurricane |               |
      | 19 | RA    | Active   | Ninja              | Hurricane |               |
      | 20 | D     | Resolved | Onboarding Project | Hurricane |               |
      | 21 | E     | Active   | Onboarding Project | Hurricane | Doing         |
      | 22 | RAF   | Active   | Onboarding Project | Hurricane | Done          |
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Open kanban view" button in the "Hurricane" milestone in the "Planner" page
    And The "Kanban" page is shown
    And The user clicks the "Show View Options" link in the "Kanban" page
    And The user unchecks the "Ninja" checkbox in the "Filter by Project" section in the "View Options" dialog
    Then The "Planned cases" column has "Ninja is currently hidden" warn message in the "Planner" page
    And The following cases are shown in the "Planned cases" column:
      | ID | Title |
      | 20 | D     |
    And The following cases are shown in the "Doing" column:
      | ID | Title |
      | 21 | E     |
    And The following cases are shown in the "Done" column:
      | ID | Title |
      | 22 | RAF   |
