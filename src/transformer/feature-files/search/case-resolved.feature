@NotAutomated
@JIRA-Key-MANUSCRIPT-30516
@Search
Feature: Search - Case - Resolved

  Scenario: Administrator user can search the list of all closed and resolved cases resolved on the date specified using the "Resolved" axis
    Given The user is logged in as Administrator
    And The following users exist:
        | Full Name  | Email                    | Account Type  | Status |
        | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The following cases exist:
        | Category | ID | Title    | Status   | Description     | Project |
        | Feature  | 17 | Case-17  | Closed   | This is a Case. | Inbox   |
        | Feature  | 18 | Case-18  | Resolved | This is a Case. | Inbox   |
    And The following case events exist:
        | Case | Type        | Content               | User          | Date       |
        | 17   | Resolved by | Yet another idea      | Administrator | 2020/01/01 |
        | 17   | Opened By   | Nobody will ever know | Test UserA    | 2019/12/12 |
        | 18   | Resolved by | Yet another idea      | Administrator | 2020/01/01 |
        | 18   | Opened By   | Nobody will ever know | Test UserA    | 2019/12/12 |
    When The user enters the following details in the "Search" box:
        | Search cases & wikis  |
        | Resolved:"2020/01/01" |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Category | ID | Title   | Status   | Description     | Project | Resolved On |
        | Feature  | 17 | Case-17 | Closed   | This is a Case. | Inbox   | 2020/01/01  |
        | Feature  | 18 | Case-18 | Resolved | This is a Case. | Inbox   | 2020/01/01  |
