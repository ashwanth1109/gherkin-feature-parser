@NotAutomated
@JIRA-Key-MANUSCRIPT-30487
@Search
Feature: Search - Wiki Article - Limit

  Scenario Outline: Administrator user can limit the number of wiki articles to be shown in the search result by using limit option
    Given The user is logged in as Administrator
    And 2000 wiki articles exist
    And The user searches for the "articles type:wikis" search string by using the search box
    And The "Search" page is shown
    And The user clicks the link "200" of the default value in the "Search" page
    And The "Search Result Limit" dropdown is shown
    When The user selects the "<Search Result Limit>" option from the "Search Result Limit" dropdown
    Then <Search Result Limit> wiki articles are displayed in the "Search" page
    Examples:
      | Search Result Limit |
      | 50                  |
      | 200                 |
      | 500                 |
      | 1000                |
      | 2000                |
