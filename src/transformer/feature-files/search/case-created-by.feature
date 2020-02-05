@NotAutomated
@JIRA-Key-MANUSCRIPT-30503
@Search
Feature: Search - Case - CreatedBy

  Scenario: Administrator user can search the list of all cases using the "CreatedBy" axis
    Given The user is logged in as Administrator
    And The following users exist:
        | Full Name  | Email                    | Account Type  | Status |
        | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The following cases exist:
        | Category      | ID | Title    | Status   | Description     | Project |
        | Feature       | 17 | Case-17  | Active   | This is a Case. | Inbox   |
    And The following case events exist:
        | Case | Type       | Content               | User       |
        | 17   | Created by | Yet another idea      | Test UserA |
        | 17   | Opened By  | Nobody will ever know | Test UserA |
    When The user enters the following details in the "Search" box:
        | Search cases & wikis   |
        | CreatedBy:"Test UserA" |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Category | ID | Title   | Status   | Description     | Project |
        | Feature  | 17 | Case-17 | Active   | This is a Case. | Inbox   |