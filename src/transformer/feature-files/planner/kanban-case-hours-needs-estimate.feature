@NotAutomated
@JIRA-Key-MANUSCRIPT-31474
@Planner
Feature: Planner - Kanban - Case - Hours - Needs Estimate

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
    And The user clicks the "Show View Options" link in the "Kanban" page
    And The user enters the following details in the "View Options" dialog:
      | Display |
      | Hours   |

  Scenario Outline: User can provide hours estimation for active cases in kanban
    When The user clicks the "Needs Estimate" link for the "<Active Case>" case in the "Planned Cases" column
    And The user enters the following details in the "Estimate hours" field for the "<Active Case>" case in the "Planned Cases" column:
      | 3 |
    Then The following cases are shown in the "Planned Cases" column:
      | Title         | Hours |
      | <Active Case> | 3     |
    And The user clicks the "BugA" case in the "Planned Cases" column
    And The following case details are shown in the "View Active Case" dialog:
      | Title         | Estimate: current |
      | <Active Case> | 3                 |
    Examples:
      | Active Case   |
      | BugA          |
      | InquiryA      |
      | ScheduleItemA |
      | FeatureA      |

  Scenario Outline: User cannot provide hours estimation for resolved cases in kanban
    When The user clicks the "Resolved" link for the "<Resolved Case>" case in the "Planned Cases" column
    Then The "Estimate hours" field is not shown for the "<Resolved Case>" case in the "Planned Cases" column
    Examples:
      | Resolved Case |
      | BugR          |
      | InquiryR      |
      | ScheduleItemR |
      | FeatureR      |
