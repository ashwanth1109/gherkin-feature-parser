@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-31523
@Search
Feature: Search - Case - Project

  Scenario: Administrator user can search the list of all cases using an axis Project
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Project-1    | Administrator   |
    And The following cases exist:
      | Case | Title    | Status   | Description              | Project   |
      | 17   | Case-17  | Active   | This is case number 123. | Project-1 |
      | 18   | Case-18  | Resolved | This is case number 456. | Project-1 |
      | 19   | Case-19  | Closed   | This is case number 456. | Inbox     |
    When The user enters the following details in the "Search" box:
      | Search cases & wikis |
      | project:Project-1    |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Type | Case | Title   | Status   | Description              | Project   |
      | Case | 17   | Case-17 | Active   | This is case number 123. | Project-1 |
      | Case | 18   | Case-18 | Resolved | This is case number 456. | Project-1 |
