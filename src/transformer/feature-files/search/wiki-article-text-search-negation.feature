@NotAutomated
@JIRA-Key-MANUSCRIPT-31562
@Search
Feature: Search - Wiki Article - Text Search Negation

  Scenario: Administrator user can search wiki articles having one text and negate other text entered in search field
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Wiki   |
      | Wiki-1 |
    And The following wiki articles exist:
      | ID | Page Title | Description                          | Wiki   |
      | W2 | Article-2  | This article has not been written.   | Wiki-1 |
      | W3 | Article-3  | This is the root article.            | Wiki-1 |
      | W4 | Article-4  | This article has been written.       | Wiki-1 |
      | W5 | Article-5  | This article is marked as favourite. | Wiki-1 |
    When The user searches for the "this -is" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Type       | ID | Headline  | Wiki   | Last Edited By |
      | Wiki Pages | W2 | Article-2 | Wiki-1 | Administrator  |
      | Wiki Pages | W4 | Article-4 | Wiki-1 | Administrator  |
