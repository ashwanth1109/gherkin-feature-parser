@NotAutomated
@JIRA-Key-MANUSCRIPT-31041
@Planner
Feature: Planner - Case - Actions

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
      | 19 | BugC          | Closed   | Ninja   | Hurricane | Bug           |
      | 20 | FeatureR      | Resolved | Ninja   | Hurricane | Feature       |
      | 21 | FeatureA      | Active   | Ninja   | Hurricane | Feature       |
      | 22 | FeatureC      | Closed   | Ninja   | Hurricane | Feature       |
      | 23 | InquiryR      | Resolved | Ninja   | Hurricane | Inquiry       |
      | 24 | InquiryA      | Active   | Ninja   | Hurricane | Inquiry       |
      | 25 | InquiryC      | Closed   | Ninja   | Hurricane | Inquiry       |
      | 26 | ScheduleItemR | Resolved | Ninja   | Hurricane | Schedule Item |
      | 27 | ScheduleItemA | Active   | Ninja   | Hurricane | Schedule Item |
      | 28 | ScheduleItemC | Closed   | Ninja   | Hurricane | Schedule Item |
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user enters the following details for the "Hurricane" milestone in the "Planner" page:
      | Group By |
      | Status   |

  Scenario Outline: User can view actions available for active cases in planners
    When The user clicks the "Quick Edit" button for the "<Active Case>" case in the "Hurricane" milestone in the "Planner" page
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

  Scenario Outline: User can view actions available for resolved cases in planners
    When The user clicks the "Quick Edit" button for the "<Resolved Case>" case in the "Hurricane" milestone in the "Planner" page
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

  Scenario Outline: User can view actions available for closed cases in planners
    When The user clicks the "Quick Edit" button for the "<Closed Case>" case in the "Hurricane" milestone in the "Planner" page
    Then The following options are shown in the "Quick Edit" dropdown:
      | Reopen |
    Examples:
      | Closed Case   |
      | BugC          |
      | FeatureC      |
      | InquiryC      |
      | ScheduleItemC |
