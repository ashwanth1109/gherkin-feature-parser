@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30527
@Search
Feature: Search - Case - OrderBy - Negative

  Scenario: Administrator user can search cases using negative value for "OrderBy" axis
    Given The user is logged in as Administrator
    And The following cases exist:
      | Category      | ID | Title    | Status   | Description     | Project            | Priority |
      | Feature       | 17 | Case-17  | Active   | This is a Case. | Inbox              | 1        |
      | Inquiry       | 18 | Case-18  | Resolved | This is a Case. | Onboarding Project | 2        |
      | Bug           | 19 | Case-19  | Closed   | This is a Case. | Inbox              | 3        |
      | Schedule Item | 20 | Case-20  | Closed   | This is a Case. | Inbox              | 2        |
      | Feature       | 21 | Case-21  | Active   | This is a Case. | Inbox              | 4        |
      | Inquiry       | 22 | Case-22  | Resolved | This is a Case. | Onboarding Project | 3        |
      | Bug           | 23 | Case-23  | Closed   | This is a Case. | Inbox              | 2        |
      | Schedule Item | 24 | Case-24  | Closed   | This is a Case. | Inbox              | 1        |
    When The user enters the following details in the "Search" box:
      | Search cases & wikis |
      | OrderBy:"-Priority"  |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Priority | Category      | ID | Title    | Status   | Description     |
      | 4        | Feature       | 21 | Case-21  | Active   | This is a Case. |
      | 3        | Inquiry       | 22 | Case-22  | Resolved | This is a Case. |
      | 3        | Bug           | 19 | Case-19  | Closed   | This is a Case. |
      | 2        | Inquiry       | 18 | Case-18  | Resolved | This is a Case. |
      | 2        | Bug           | 23 | Case-23  | Closed   | This is a Case. |
      | 2        | Schedule Item | 20 | Case-20  | Closed   | This is a Case. |
      | 1        | Feature       | 17 | Case-17  | Active   | This is a Case. |
      | 1        | Schedule Item | 24 | Case-24  | Closed   | This is a Case. |
