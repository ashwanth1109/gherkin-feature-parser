@NotAutomated
@JIRA-Key-MANUSCRIPT-30475
@Search
Feature: Search - Wiki Article - AND

  Scenario: Administrator user can search an wiki article having both the texts entered in search field separated by "AND"
    Given The user is logged in as Administrator
    And The following wiki articles exist:
        | Page Title | Description                |
        | Article-1  | This is Article number 123 |
    When The user enters the following details in the "Search" box:
        |  Search cases & wikis  |
        | "This" And "number"    |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type         | Headline  |
        | Wiki Article | Article-1 |
