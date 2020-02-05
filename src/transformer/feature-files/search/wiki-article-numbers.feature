@NotAutomated
@JIRA-Key-MANUSCRIPT-30473
@Search
Feature: Search - Wiki Article - Numbers

  Scenario: Administrator user can search an wiki article using a number the article contains
    Given The user is logged in as Administrator
    And The following wiki articles exist:
        | Page Title | Description                |
        | Article-1  | This is Article number 123 |
    When The user enters the following details in the "Search" box:
        | Search cases & wikis |
        | "123"                |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type         | Headline  |
        | Wiki Article | Article-1 |
