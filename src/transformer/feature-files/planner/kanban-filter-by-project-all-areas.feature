@NotAutomated
@JIRA-Key-MANUSCRIPT-31481
@Planner
Feature: Planner - Kanban - Filter By Project - All Areas

  Scenario: User can use "All Areas" for view options in kanban
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
      | ID | Title | Status   | Project            | Project Area | Milestone | Kanban Column |
      | 17 | R     | Resolved | Ninja              | Ahou         | Hurricane |               |
      | 18 | A     | Active   | Ninja              | Ahou         | Hurricane |               |
      | 19 | C     | Active   | Ninja              | Miro         | Hurricane |               |
      | 20 | D     | Resolved | Onboarding Project | Guidelines   | Hurricane |               |
      | 21 | E     | Active   | Onboarding Project | Guidelines   | Hurricane | Doing         |
      | 22 | RAF   | Active   | Onboarding Project | Guidelines   | Hurricane | Done          |
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Open kanban view" button in the "Hurricane" milestone in the "Planner" page
    And The "Kanban" page is shown
    And The user clicks the "Show View Options" link in the "Planner" page
    And The user enters the following details in the "View Options" dialog:
      | Filter by Area |
      | All Areas      |
    Then The following cases are shown in the "Planned cases" column:
      | ID | Title |
      | 17 | R     |
      | 18 | A     |
      | 19 | C     |
      | 20 | D     |
    And The following cases are shown in the "Doing" column:
      | ID | Title |
      | 21 | E     |
    And The following cases are shown in the "Done" column:
      | ID | Title |
      | 22 | RAF   |

