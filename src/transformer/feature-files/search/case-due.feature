@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30511
@Search
Feature: Search - Case - Due

  Scenario: Administrator user can search the list of all cases using the due date specified using the "Due" axis
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name  | Email                    | Account Type | Status |
      | Test UserA | testusera@manuscript.com | Normal       | Active |
    And The following cases exist:
      | Category      | ID | Title    | Status | Description     | Project | Due on     |
      | Feature       | 17 | Case-17  | Active | This is a Case. | Inbox   | 2020/01/01 |
      | Inquiry       | 18 | Case-18  | Active | This is a Case. | Inbox   | 2020/01/01 |
    When The user enters the following details in the "Search" box:
      | Search cases & wikis |
      | Due:"2020/01/01"     |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Category | ID | Title   | Status | Description     | Due on     |
      | Feature  | 17 | Case-17 | Active | This is a Case. | 2020/01/01 |
      | Inquiry  | 18 | Case-18 | Active | This is a Case. | 2020/01/01 |
