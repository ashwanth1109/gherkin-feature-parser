@NotAutomated
@JIRA-Key-MANUSCRIPT-30465
@Search
Feature: Search - Case - Actions - Edit

  Scenario: Administrator user can edit a case from search results in Search page
    Given The user is logged in as Administrator
    And The following users exist:
        | Full Name  | Email                    | Account Type  | Status |
        | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The following cases exist:
        | Case | Title         | Status   | Description                  |
        | 17   | Case-1 Active | Active   | This is a good case to work. |
    And The user searches for the "This is a good case to work." search string by using the search box
    And The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type | Case | Title         | Status | Description                  |
        | Case | 17   | Case-1 Active | Active | This is a good case to work. |
    And The user hovers over the "Title" column of the "Case-1 Active" case in the "Search" page
    And The "Action" dropdown is enabled in the "Search" page
    When The user clicks the "Action" dropdown in the "Search" page
    And The user selects the "Edit" option from the "Action" dropdown
    And The "Edit Active Case" page is shown
    And The user enters the case details in the "Edit Active Case" page:
        | Title     |
        | New Title |
    And The user clicks the "Save" button in the "Edit Active Case" page
    Then The user is redirected to the "View Active Case" page
    And The following case details are shown in the "View Active Case" page:
        | ID | Title     | Status | Description                  |
        | 17 | New Title | Active | This is a good case to work. |
