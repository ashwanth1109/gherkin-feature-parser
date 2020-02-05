@NotAutomated
@JIRA-Key-MANUSCRIPT-30469
@Search
Feature: Search - Case - Actions - Add Subcase

  Scenario: Administrator user can add a subcase to a case from search results in Search page
    Given The user is logged in as Administrator
    And The following cases exist:
        | Case | Title         | Status  | Description                  |
        | 17   | Case-1 Active | Active  | This is a good case to work. |
    And The user searches for the "This is a good case to work." search string by using the search box
    And The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type | Case | Title         | Status | Description                  |
        | Case | 17   | Case-1 Active | Active | This is a good case to work. |
    And The user hovers over the "Title" column of the "Case-1 Active" case in the "Search" page
    And The "Action" dropdown is enabled in the "Search" page
    When The user clicks the "Action" dropdown in the "Search" page
    And The user selects the "Add Subcase" option from the "Action" dropdown
    And The "Add Subcase" dialog is opened in the "Search" page
    And The user enters the following details in the "Add Subcase" dialog:
         | Category | Title     |
         | Bug      | SubCase-1 |
    And The user clicks the "Check" button in the "Add Subcase" dialog
    Then The following case details are shown in the "Search" page:
        | Type | Case | Title         | Status | Description                  |
        | Case | 17   | Case-1 Active | Active | This is a good case to work. |
        | Case | 18   | SubCase-1     | Active |                              |
