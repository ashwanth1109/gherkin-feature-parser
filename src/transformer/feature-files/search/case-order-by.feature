@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30525
@Search
Feature: Search - Case - OrderBy

  Scenario: Administrator user can search cases using "OrderBy" axis
    Given The user is logged in as Administrator
    And The following cases exist:
      | Category      | ID | Title    | Status   | Description     | Project            |
      | Feature       | 17 | Case-17  | Active   | This is a Case. | Inbox              |
      | Inquiry       | 18 | Case-18  | Resolved | This is a Case. | Onboarding Project |
      | Bug           | 19 | Case-19  | Closed   | This is a Case. | Inbox              |
      | Schedule Item | 20 | Case-20  | Closed   | This is a Case. | Inbox              |
      | Feature       | 21 | Case-21  | Active   | This is a Case. | Inbox              |
      | Inquiry       | 22 | Case-22  | Resolved | This is a Case. | Onboarding Project |
      | Bug           | 23 | Case-23  | Closed   | This is a Case. | Inbox              |
      | Schedule Item | 24 | Case-24  | Closed   | This is a Case. | Inbox              |
    When The user enters the following details in the "Search" box:
      | Search cases & wikis |
      | orderBy:category     |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Category      | ID | Title    | Status   | Description     | Project            |
      | Bug           | 19 | Case-19  | Closed   | This is a Case. | Inbox              |
      | Bug           | 23 | Case-23  | Closed   | This is a Case. | Inbox              |
      | Feature       | 17 | Case-17  | Active   | This is a Case. | Inbox              |
      | Feature       | 21 | Case-21  | Active   | This is a Case. | Inbox              |
      | Inquiry       | 18 | Case-18  | Resolved | This is a Case. | Onboarding Project |
      | Inquiry       | 22 | Case-22  | Resolved | This is a Case. | Onboarding Project |
      | Schedule Item | 20 | Case-20  | Closed   | This is a Case. | Inbox              |
      | Schedule Item | 24 | Case-24  | Closed   | This is a Case. | Inbox              |
