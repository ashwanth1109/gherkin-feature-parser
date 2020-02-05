@NotAutomated
@JIRA-Key-MANUSCRIPT-31477
@Planner
Feature: Planner - Kanban - Case - Actions

  Background:
    Given The user is logged in as Administrator
    And The following users exist:
      | Full name | Email         | Account Type | Status | Password |
      | Lion King | lk@jungle.com | Normal       | Active | lking    |
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
      | ID | Title         | Status   | Project | Milestone | Category      |
      | 17 | BugR          | Resolved | Ninja   | Hurricane | Bug           |
      | 18 | BugA          | Active   | Ninja   | Hurricane | Bug           |
      | 19 | FeatureR      | Resolved | Ninja   | Hurricane | Feature       |
      | 20 | FeatureA      | Active   | Ninja   | Hurricane | Feature       |
      | 21 | InquiryR      | Resolved | Ninja   | Hurricane | Inquiry       |
      | 22 | InquiryA      | Active   | Ninja   | Hurricane | Inquiry       |
      | 23 | ScheduleItemR | Resolved | Ninja   | Hurricane | Schedule Item |
      | 24 | ScheduleItemA | Active   | Ninja   | Hurricane | Schedule Item |
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Open kanban view" button in the "Hurricane" milestone in the "Planner" page
    And The "Kanban" page is shown

  Scenario Outline: User can view actions available for active cases in kanban
    When The user clicks the "Quick Edit" button for the "<Active Case>" case in the "Planned Cases" column
    Then The following options are shown in the "Quick Edit" dropdown:
      | Edit            |
      | Assign          |
      | Change Priority |
      | Change Category |
      | Resolve         |
    Examples:
      | Active Case   |
      | BugA          |
      | FeatureA      |
      | InquiryA      |
      | ScheduleItemA |

  Scenario Outline: User can view actions available for resolved cases in kanban
    When The user clicks the "Quick Edit" button for the "<Resolved Case>" case in the "Planned Cases" column
    Then The following options are shown in the "Quick Edit" dropdown:
      | Edit            |
      | Assign          |
      | Change Priority |
      | Change Category |
      | Close           |
      | Reactivate      |
    Examples:
      | Resolved Case |
      | BugR          |
      | FeatureR      |
      | InquiryR      |
      | ScheduleItemR |
