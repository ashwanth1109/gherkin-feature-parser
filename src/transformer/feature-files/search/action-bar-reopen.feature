@NotAutomated
@JIRA-Key-MANUSCRIPT-30894
@Search
Feature: Search - Case - Action Bar - Reopen

  Scenario: Administrator user can reopen a closed case from search results in Search page
    Given The user is logged in as Administrator
    And The following cases exist:
        | Case | Title   | Status | Description                  |
        | 17   | Case-17 | Closed | This is a good case to work. |
    And The user searches for the "This is a good case to work." search string by using the search box
    And The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type | Case | Title   | Status | Description                  |
        | Case | 17   | Case-17 | Closed | This is a good case to work. |
    And The user checks the "Selection" checkbox present in the "Case-17" row in the "Search" page
    When The user clicks the "Reopen" button in the "Search" page
    And The "Edit Closed Case" page is shown
    And The user clicks the "Reopen" button in the "Edit Closed Case" page
    Then The "View Active Case" page is shown
    And The following case details are shown in the "View Active Case" page:
       | ID  | Title   | Status  | Description                  |
       | 17  | Case-17 | Active  | This is a good case to work. |

  Scenario: Administrator user cannot reopen a resolved case from search results in Search page
    Given The user is logged in as Administrator
    And The following cases exist:
        | ID | Title   | Status   | Description                  |
        | 17 | Case-39 | Resolved | This is a good case to work. |
    And The user searches for the "This is a good case to work." search string by using the search box
    And The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type | ID | Title   | Status   | Description                  |
        | Case | 17 | Case-39 | Resolved | This is a good case to work. |
    When The user checks the "Selection" checkbox present in the "Case-39" row in the "Search" page
    Then The "Reopen" option is disabled in the "Search" page

  Scenario: Administrator user cannot reopen an active case from search results in Search page
    Given The user is logged in as Administrator
    And The following cases exist:
        | ID | Title   | Status | Description                  |
        | 17 | Case-39 | Active | This is a good case to work. |
    And The user searches for the "This is a good case to work." search string by using the search box
    And The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type | ID | Title   | Status | Description                  |
        | Case | 17 | Case-39 | Active | This is a good case to work. |
    When The user checks the "Selection" checkbox present in the "Case-39" row in the "Search" page
    Then The "Reopen" option is disabled in the "Search" page
