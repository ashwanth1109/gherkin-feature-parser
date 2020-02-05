@NotAutomated
@JIRA-Key-MANUSCRIPT-31039
@Planner
Feature: Planner - Case - Story Points - Update

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
      | ID | Title         | Status   | Project | Milestone | Category      | Story Points |
      | 17 | BugR          | Resolved | Ninja   | Hurricane | Bug           | 2            |
      | 18 | BugA          | Active   | Ninja   | Hurricane | Bug           | 2            |
      | 19 | BugC          | Closed   | Ninja   | Hurricane | Bug           | 2            |
      | 20 | FeatureR      | Resolved | Ninja   | Hurricane | Feature       | 2            |
      | 21 | FeatureA      | Active   | Ninja   | Hurricane | Feature       | 2            |
      | 22 | FeatureC      | Closed   | Ninja   | Hurricane | Feature       | 2            |
      | 23 | InquiryR      | Resolved | Ninja   | Hurricane | Inquiry       | 2            |
      | 24 | InquiryA      | Active   | Ninja   | Hurricane | Inquiry       | 2            |
      | 25 | InquiryC      | Closed   | Ninja   | Hurricane | Inquiry       | 2            |
      | 26 | ScheduleItemR | Resolved | Ninja   | Hurricane | Schedule Item | 2            |
      | 27 | ScheduleItemA | Active   | Ninja   | Hurricane | Schedule Item | 2            |
      | 28 | ScheduleItemC | Closed   | Ninja   | Hurricane | Schedule Item | 2            |
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Show View Options" link in the "Planner" page
    And The user enters the following details in the "View Options" dialog:
      | Display      |
      | Story Points |

  Scenario Outline: User can update story point estimation for active cases
    And The user enters the following details for the "Hurricane" milestone in the "Planner" page:
      | Group By |
      | Status   |
    When The user clicks the "2 pts" link for the "<Active Case>" case in the "Hurricane" milestone in the "Planner" page
    And The user enters the following details in the "Estimate pts" field for the "<Active Case>" case in the "Hurricane" milestone in the "Planner" page:
      | 3 |
    Then The following cases are shown in the "Hurricane" milestone in the "Planner" page:
      | Title         | Story points |
      | <Active Case> | 3            |
    And The user clicks the "BugA" case in the "Hurricane" milestone in the "Planner" page
    And The following case details are shown in the "View Active Case" dialog:
      | Title         | Story points |
      | <Active Case> | 3            |
    Examples:
      | Active Case   |
      | BugA          |
      | InquiryA      |
      | ScheduleItemA |
      | FeatureA      |

  Scenario Outline: User cannot update story point estimation for resolved cases in planners
    When The user enters the following details for the "Hurricane" milestone in the "Planner" page:
      | Group By |
      | Status   |
    Then The "Needs Estimate" link is not available for the "<Resolved Case>" in the "Hurricane" milestone in the "Planner" page
    Examples:
      | Resolved Case |
      | BugR          |
      | InquiryR      |
      | ScheduleItemR |
      | FeatureR      |

  Scenario Outline: User cannot update story point estimation for closed cases in planners
    When The user enters the following details for the "Hurricane" milestone in the "Planner" page:
      | Group By |
      | Status   |
    Then The "Needs Estimate" link is not available for the "<Closed Case>" in the "Hurricane" milestone in the "Planner" page
    Examples:
      | Closed Case   |
      | BugC          |
      | InquiryC      |
      | ScheduleItemC |
      | FeatureC      |
