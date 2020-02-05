@NotAutomated
@JIRA-Key-MANUSCRIPT-30882
@Search
Feature: Search - Case - Action Bar - Spam

  Scenario: Administrator user can mark a case as spam from action bar in search page
    Given The user is logged in as Administrator
    And The following cases exist:
      | Category | ID | Title  | Status | Description                  | Area     |
      | Inquiry  | 17 | Case-1 | Active | This is a good case to work. | Not Spam |
    And The user searches for the "This is a good case to work." search string by using the search box
    And The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Type | Category | ID | Title  | Status | Description                  | Area     |
      | Case | Inquiry  | 17 | Case-1 | Active | This is a good case to work. | Not Spam |
    And The user checks the "Selection" checkbox present in the "Case-1" row in the "Search" page
    When The user clicks the "Spam" button in the "Search" page
    And The user searches for the "17" search string by using the search box
    Then The "View Active Case" page is shown
    And The following case details are shown in the "View Active Case" page:
      | Type | Category | ID | Title  | Status | Description                  | Area |
      | Case | Inquiry  | 17 | Case-1 | Active | This is a good case to work. | Spam |
