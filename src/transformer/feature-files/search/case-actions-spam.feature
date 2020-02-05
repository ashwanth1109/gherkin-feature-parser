@NotAutomated
@JIRA-Key-MANUSCRIPT-30463
@Search
Feature: Search - Case - Actions - Spam

  Scenario: Administrator user can mark a case as spam in Search page from search results
    Given The user is logged in as Administrator
    And The following cases exist:
        | Case | Title         | Status   | Description                  | Area     |
        | 17   | Case-1 Active | Active   | This is a good case to work. | Not Spam |
    And The user searches for the "This is a good case to work." search string by using the search box
    And The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type | Case | Title         | Status | Description                  | Area     |
        | Case | 17   | Case-1 Active | Active | This is a good case to work. | Not Spam |
    And The user hovers over the "Title" column of the "Case-1 Active" case in the "Search" page
    And The "Action" dropdown is enabled in the "Search" page
    When The user clicks the "Action" dropdown in the "Search" page
    And The user selects the "Spam" option from the "Action" dropdown
    Then The case is moved to "Spam"
    And The following results are displayed in the "Search" page:
        | Type | Case | Title         | Status | Description                  | Area |
        | Case | 17   | Case-1 Active | Active | This is a good case to work. | Spam |
