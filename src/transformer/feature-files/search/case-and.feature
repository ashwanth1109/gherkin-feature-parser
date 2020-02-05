@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30474
@Search
Feature: Search - Case - AND

  Scenario: Administrator user can search all cases having both the texts entered in search field separated by "AND"
    Given The user is logged in as Administrator
    And The following cases exist:
        | Case | Title           | Status   | Description              |
        | 17   | Case-1 Active   | Active   | This is case number 123. |
        | 18   | Case-1 Resolved | Resolved | This is case number 456. |
        | 19   | Case-1 Closed   | Closed   | This is a phone number.  |
    When The user enters the following details in the "Search" box:
        |  Search cases & wikis |
        | "This" And "number"   |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type | Case | Title           | Status   | Description              |
        | Case | 17   | Case-1 Active   | Active   | This is case number 123. |
        | Case | 18   | Case-1 Resolved | Resolved | This is case number 456. |
        | Case | 19   | Case-1 Closed   | Closed   | This is a phone number.  |
