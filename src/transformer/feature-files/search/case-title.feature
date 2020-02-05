@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30523
@Search
Feature: Search - Case - Title

  Scenario: Administrator user can search all cases using the axis value "Title" axis
    Given The user is logged in as Administrator
    And The following cases exist:
      | Category | ID | Title    | Status | Description     | Project |
      | Feature  | 18 | Case-18  | Active | This is a Case. | Inbox   |
    When The user enters the following details in the "Search" box:
      | Search cases & wikis |
      | Title:"Case-18"      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Category | ID | Title   | Status | Description     | Project |
      | Feature  | 18 | Case-18 | Active | This is a Case. | Inbox   |
