@NotAutomated
@JIRA-Key-MANUSCRIPT-30892
@Search
Feature: Search - Case - Action Bar - Close

  Scenario: Administrator user can close a resolved case from action bar in search page
    Given The user is logged in as Administrator
    And The following cases exist:
        | Case | Title   | Status    | Description                  |
        | 17   | Case-1  | Resolved  | This is a good case to work. |
    And The user searches for the "This is a good case to work." search string by using the search box
    And The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type | Case | Title  | Status   | Description                  |
        | Case | 17   | Case-1 | Resolved | This is a good case to work. |
    And The user checks the "Selection" checkbox present in the "Case-1" row in the "Search" page
    When The user clicks the "Close" button in the "Search" page
    And The "Close Resolved Case" page is shown
    And The user clicks the "Close" button in the "Close Resolved Case" page
    Then The "Search" page is shown
    And The following case details are shown in the "Search" page:
        | Type | Case | Title  | Status | Description                  |
        | Case | 17   | Case-1 | Closed | This is a good case to work. |
