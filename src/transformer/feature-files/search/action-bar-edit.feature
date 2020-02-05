@NotAutomated
@JIRA-Key-MANUSCRIPT-30883
@Search
Feature: Search - Case - Action Bar - Edit

  Scenario: Administrator user can edit a case from action bar in search page
    Given The user is logged in as Administrator
    And The following users exist:
        | Full Name  | Email                    | Account Type  | Status |
        | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The following cases exist:
        | Case | Title  | Status   | Description                  |
        | 17   | Case-1 | Active   | This is a good case to work. |
    And The user searches for the "This is a good case to work." search string by using the search box
    And The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type | Case | Title  | Status | Description                  |
        | Case | 17   | Case-1 | Active | This is a good case to work. |
    And The user checks the "Selection" checkbox present in the "Case-1" row in the "Search" page
    When The user clicks the "Edit" button in the "Search" page
    And The "Edit Active Case" page is shown
    And The user enters the case details in the "Edit Active Case" page:
        | Title     |
        | New Title |
    And The user clicks the "Save" button in the "Edit Active Case" page
    Then The user is redirected to the "View Active Case" page
    And The following case details are shown in the "View Active Case" page:
        | Type | Case | Title     | Status | Description                  |
        | Case | 17   | New Title | Active | This is a good case to work. |
