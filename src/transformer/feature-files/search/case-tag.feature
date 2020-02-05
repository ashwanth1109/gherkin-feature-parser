@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-31529
@Search
Feature: Search - Case - Tag

  Scenario: Administrator user can search the list of all cases using the axis Tag
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title    | Status   | Description              | Tags      |
      | 17   | Case-17  | Active   | This is case number 123. | test123   |
      | 18   | Case-18  | Resolved | This is case number 456. | test123   |
      | 19   | Case-19  | Closed   | This is case number 456. | TestCase  |
    When The user enters the following details in the "Search" box:
      | Search cases & wikis |
      | Tag:test123          |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Type | Case | Title   | Status   |
      | Case | 17   | Case-17 | Active   |
      | Case | 18   | Case-18 | Resolved |
