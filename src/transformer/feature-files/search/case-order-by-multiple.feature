@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30526
@Search
Feature: Search - Case - OrderBy - Multiple

  Scenario: Administrator user can search cases using multiple "OrderBy" axis
    Given The user is logged in as Administrator
    And The following milestones exist:
      | Project            | Edit | Can Delete | Milestone Name | Assignable | Backlog | Completion Date | Start Date |
      | Inbox              | true | true       | Milestone-1    | Yes        | No      | 2020/01/01      | 2019/12/12 |
      | Inbox              | true | true       | Milestone-2    | Yes        | No      | 2020/01/01      | 2019/12/12 |
      | Onboarding Project | true | true       | Milestone-3    | Yes        | No      | 2020/01/01      | 2019/12/12 |
    And The following cases exist:
      | Category      | ID | Title    | Status   | Description     | Project            | Milestone   | Priority |
      | Feature       | 17 | Case-17  | Active   | This is a Case. | Inbox              | Milestone-2 | 1        |
      | Inquiry       | 18 | Case-18  | Resolved | This is a Case. | Onboarding Project | Milestone-3 | 2        |
      | Bug           | 19 | Case-19  | Closed   | This is a Case. | Inbox              | Milestone-1 | 3        |
      | Schedule Item | 20 | Case-20  | Closed   | This is a Case. | Inbox              | Milestone-1 | 2        |
      | Feature       | 21 | Case-21  | Active   | This is a Case. | Inbox              | Milestone-1 | 4        |
      | Inquiry       | 22 | Case-22  | Resolved | This is a Case. | Onboarding Project | Milestone-3 | 3        |
      | Bug           | 23 | Case-23  | Closed   | This is a Case. | Inbox              | Milestone-2 | 2        |
      | Schedule Item | 24 | Case-24  | Closed   | This is a Case. | Inbox              | Milestone-1 | 1        |
    When The user enters the following details in the "Search" box:
      | Search cases & wikis                   |
      | OrderBy:Milestone and OrderBy:Priority |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Milestone   | Category      | ID | Title    | Status   | Description     | Priority |
      | Milestone-1 | Schedule Item | 24 | Case-24  | Closed   | This is a Case. | 1        |
      | Milestone-1 | Schedule Item | 20 | Case-20  | Closed   | This is a Case. | 2        |
      | Milestone-1 | Bug           | 19 | Case-19  | Closed   | This is a Case. | 3        |
      | Milestone-1 | Feature       | 21 | Case-21  | Active   | This is a Case. | 4        |
      | Milestone-2 | Feature       | 17 | Case-17  | Active   | This is a Case. | 1        |
      | Milestone-2 | Bug           | 23 | Case-23  | Closed   | This is a Case. | 2        |
      | Milestone-3 | Inquiry       | 18 | Case-18  | Resolved | This is a Case. | 2        |
      | Milestone-3 | Inquiry       | 22 | Case-22  | Resolved | This is a Case. | 3        |
