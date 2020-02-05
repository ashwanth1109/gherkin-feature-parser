@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30522
@Search
Feature: Search - Case - Due - Negation

  Scenario: Administrator user can search the list of cases with the search criteria using negation for due date specified using the axis value "Due"
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name  | Email                    | Account Type | Status |
      | Test UserA | testusera@manuscript.com | Normal       | Active |
    And The following cases exist:
      | Category      | ID | Title    | Status | Description     | Project            | Due on     |
      | Inquiry       | 18 | Case-18  | Active | This is a Case. | Inbox              | 2020/11/11 |
      | Feature       | 17 | Case-19  | Active | This is a Case. | Onboarding Project | 2020/01/01 |
    When The user enters the following details in the "Search" box:
      | Search cases & wikis |
      | -Due:"2020/01/01"    |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Category | ID | Title   | Status | Description     | Due on     |
      | Feature  | 17 | Case-17 | Active | This is a Case. | 2020/11/11 |
