@NotAutomated
@JIRA-Key-MANUSCRIPT-30462
@Search
Feature: Search - Wiki Article - Text Search

  Scenario: Administrator user can search an wiki article using a text the article contains
    Given The user is logged in as Administrator
    And The following wiki articles exist:
        | Page Title | Description    |
        | Article-1  | Hello friends. |
    When The user searches for the "Hello friends." search string by using the search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type          | Headline  | Description    |
        | Wiki Article  | Article-1 | Hello friends. |
