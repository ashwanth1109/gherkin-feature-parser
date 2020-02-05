@NotAutomated
@JIRA-Key-MANUSCRIPT-31045
@Planner
Feature: Planner - Case - Actions - Change Status - Drag and Drop - Closed Cases cannot be moved

  Scenario Outline: User cannot reopen a closed case by drag and drop in planners
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
    When The user drags the "<Case>" case to the "Active" group in the "Hurricane" milestone in the "Planner" page
    Then The "Closed cases cannot be moved" warn message is shown
    And The following cases are shown in the "Hurricane" milestone in the "Planner" page:
      | Title  | Status |
      | <Case> | Closed |
    And The user clicks the "<Case>" case in the "Hurricane" milestone in the "Planner" page
    And The following case details are shown in the "View Closed Case" dialog:
      | Title  | Status |
      | <Case> | Closed |
    Examples:
      | Case          |
      | BugC          |
      | InquiryC      |
      | ScheduleItemC |
      | FeatureC      |
