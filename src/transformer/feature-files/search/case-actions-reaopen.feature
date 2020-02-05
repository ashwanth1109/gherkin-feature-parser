@NotAutomated
@JIRA-Key-MANUSCRIPT-30471
@Search
Feature: Search - Case - Actions - Reopen

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
    And The user hovers over the "Title" column of the "Case-17" case in the "Search" page
    And The "Action" dropdown is enabled in the "Search" page
    When The user clicks the "Action" dropdown in the "Search" page
    And The user selects the "Reopen" option from the "Action" dropdown
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
    And The user hovers over the "Title" column of the "Case-39" case in the "Search" page
    And The "Action" dropdown is enabled in the "Search" page
    When The user clicks the "Action" dropdown in the "Search" page
    Then The "Reopen" option is disabled in the "Action" dropdown

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
    And The user hovers over the "Title" column of the "Case-39" case in the "Search" page
    And The "Action" dropdown is enabled in the "Search" page
    When The user clicks the "Action" dropdown in the "Search" page
    Then The "Reopen" option is disabled in the "Action" dropdown
