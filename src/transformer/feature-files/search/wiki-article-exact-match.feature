@NotAutomated
@JIRA-Key-MANUSCRIPT-30482
@Search
Feature: Search - Wiki Article - Exact Match

  Scenario: Administrator user can search the list of all wiki articles using an axis id for an exact match only
    Given The user is logged in as Administrator
    And The following wiki articles exist:
        | Page Title | Description         | Wiki   |
        | Article-1  | This is an Article  | Wiki-1 |
        | Article-2  | Hello World         | Wiki-2 |
        | Article-3  | Welcome             | Wiki-2 |
    When The user enters the following details in the "Search" box:
        |  Search cases & wikis |
        |  headline:=Article-1  |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type          | Headline  | Description         | Wiki   |
        | Wiki Article  | Article-1 | This is an Article  | Wiki-2 |
