@NotAutomated
@JIRA-Key-MANUSCRIPT-30513
@Search
Feature: Search - Case - LastEdited

  Scenario: Administrator user can search the list of all cases last edited on the date specified using the "LastEdited" axis
    Given The user is logged in as Administrator
    And The following users exist:
        | Full Name  | Email                    | Account Type  | Status |
        | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The following cases exist:
        | Category | ID | Title    | Status | Description     | Project |
        | Feature  | 17 | Case-17  | Active | This is a Case. | Inbox   |
    And The following case events exist:
        | Case | Type           | Content               | User          | Date       |
        | 17   | Edited by      | Yet another idea      | Administrator | 2019/12/12 |
        | 17   | Opened By      | Nobody will ever know | Test UserA    | 2019/12/12 |
        | 17   | Last Edited by | Yet another idea      | Test UserA    | 2020/01/01 |
    When The user enters the following details in the "Search" box:
        | Search cases & wikis     |
        | LastEdited:"2020/01/01"  |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Category | ID | Title   | Status | Description     | Last Edited on |
        | Feature  | 17 | Case-17 | Active | This is a Case. | 2020/01/01     |
