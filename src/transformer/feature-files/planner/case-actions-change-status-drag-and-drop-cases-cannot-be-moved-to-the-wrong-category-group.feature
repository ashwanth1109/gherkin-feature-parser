@NotAutomated
@JIRA-Key-MANUSCRIPT-31046
@Planner
Feature: Planner - Case - Actions - Change Status - Drag and Drop - Cases cannot be moved to the wrong category group

  Scenario Outline: User cannot drag and drop a case to the invalid category in planners
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
    When The user drags the "<Case>" case to the "<Invalid Status>" group in the "Hurricane" milestone in the "Planner" page
    Then The "Status <Invalid Status> does not match category <Category>" warn message is shown
    And The following cases are shown in the "Hurricane" milestone in the "Planner" page:
      | Title  | Status            |
      | <Case> | <Original Status> |
    Examples:
      | Case          | Original Status | Invalid Status        | Category      |
      | BugA          | Active          | Resolved(Responded)   | Bug           |
      | BugA          | Active          | Resolved(Completed)   | Bug           |
      | BugA          | Active          | Resolved(Implemented) | Bug           |
      | InquiryA      | Active          | Resolved(Fixed)       | Inquiry       |
      | InquiryA      | Active          | Resolved(Completed)   | Inquiry       |
      | InquiryA      | Active          | Resolved(Implemented) | Inquiry       |
      | ScheduleItemA | Active          | Resolved(Fixed)       | Schedule Item |
      | ScheduleItemA | Active          | Resolved(Responded)   | Schedule Item |
      | ScheduleItemA | Active          | Resolved(Implemented) | Schedule Item |
      | FeatureA      | Active          | Resolved(Fixed)       | Feature       |
      | FeatureA      | Active          | Resolved(Responded)   | Feature       |
      | FeatureA      | Active          | Resolved(Completed)   | Feature       |
