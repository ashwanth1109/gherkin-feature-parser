@NotAutomated
@JIRA-Key-MANUSCRIPT-30890
@Search
Feature: Search - Case - Action Bar - Resolve

  Scenario: Administrator user can resolve an active case from action bar in search page
    Given The user is logged in as Administrator
    And The following cases exist:
        | Case | Title  | Status   | Description                  |
        | 17   | Case-1 | Active   | This is a good case to work. |
    And The user searches for the "This is a good case to work." search string by using the search box
    And The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type | Case | Title  | Status | Description                  |
        | Case | 17   | Case-1 | Active | This is a good case to work. |
    And The user checks the "Selection" checkbox present in the "Case-1" row in the "Search" page
    When The user clicks the "Resolve" button in the "Search" page
    And The "Edit Active Case" page is shown
    And The user clicks the "Resolve" button in the "Edit Active Case" page
    Then The "View Resolved Case" page is shown
    And The following case details are shown in the "View Resolved Case" page:
       | ID  | Title  | Status   | Description                  |
       | 17  | Case-1 | Resolved | This is a good case to work. |

  Scenario: Administrator user can resolve a resolved case from action bar in search page
    Given The user is logged in as Administrator
    And The following cases exist:
        | ID | Title   | Status   | Description                  |
        | 17 | Case-39 | Resolved | This is a good case to work. |
    And The user searches for the "This is a good case to work." search string by using the search box
    And The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type | ID | Title   | Status   | Description                  |
        | Case | 17 | Case-39 | Resolved | This is a good case to work. |
    And The user checks the "Selection" checkbox present in the "Case-39" row in the "Search" page
    When The user clicks the "Resolve" button in the "Search" page
    And The "Edit Resolved Case" page is shown
    And The user clicks the "Resolve" button in the "Edit Resolved Case" page
    Then The "View Resolved Case" page is shown
    And The following case details are shown in the "View Resolved Case" page:
        | ID  | Title   | Status   | Description                  |
        | 17  | Case-39 | Resolved | This is a good case to work. |

  Scenario: Administrator user cannot resolve a closed case from action bar in search page
    Given The user is logged in as Administrator
    And The following cases exist:
        | ID | Title   | Status | Description                  |
        | 17 | Case-39 | Closed | This is a good case to work. |
    And The user searches for the "This is a good case to work." search string by using the search box
    And The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type | ID | Title   | Status | Description                  |
        | Case | 17 | Case-39 | Closed | This is a good case to work. |
    When The user checks the "Selection" checkbox present in the "Case-39" row in the "Search" page
    Then The "Resolve" option is disabled in the "Search" page
