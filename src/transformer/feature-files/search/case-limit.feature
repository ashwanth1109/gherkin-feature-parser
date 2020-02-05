@NotAutomated
@JIRA-Key-MANUSCRIPT-30485
@Search
Feature: Search - Case - Limit

  Scenario Outline: Administrator user can limit the number of cases to be shown in the search result by using limit
    Given The user is logged in as Administrator
    And 2000 cases exist
    And The user searches for the "cases" search string by using the search box
    And The "Search" page is shown
    And The user clicks the link "200" of the default value in the "Search" page
    And The "Search Result Limit" dropdown is shown
    When The user selects the "<Search Result Limit>" option from the "Search Result Limit" dropdown
    Then <Search Result Limit> cases are displayed in the "Search" page
    Examples:
      | Search Result Limit |
      | 50                  |
      | 200                 |
      | 500                 |
      | 1000                |
      | 2000                |
