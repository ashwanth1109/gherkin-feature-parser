@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30481
@Search
Feature: Search - Case - Exact Match

  Scenario: Administrator user can search the list of all cases using an axis id for an exact match only
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Inbox-1      | Administrator   |
    And The following cases exist:
      | Case | Title    | Status   | Description              | Project | Project ID |
      | 17   | Case-17  | Active   | This is case number 123. | Inbox   | 1          |
      | 18   | Case-18  | Resolved | This is case number 456. | Inbox   | 1          |
      | 19   | Case-19  | Closed   | This is case number 456. | Inbox-1 | 2          |
    When The user enters the following details in the "Search" box:
      | Search cases & wikis |
      | project:=1           |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Type | Case | Title   | Status   | Description              | Project |
      | Case | 17   | Case-17 | Active   | This is case number 123. | Inbox   |
      | Case | 18   | Case-18 | Resolved | This is case number 456. | Inbox   |
