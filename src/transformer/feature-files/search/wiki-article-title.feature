@NotAutomated
@JIRA-Key-MANUSCRIPT-30524
@Search
Feature: Search - Wiki Article - Title

  Scenario: Administrator user can search all wiki articles using the axis value "Title" axis
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Wiki   |
      | Wiki-1 |
    And The following wiki articles exist:
      | ID | Page Title | Description         | Wiki   |
      | W1 | Article-1  | This is an Article  | Wiki-1 |
    When The user enters the following details in the "Search" box:
      | Search cases & wikis |
      | Title:"Article-1"    |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Type          | ID | Headline  | Description        | Wiki   | Last Edited By |
      | Wiki Article  | W1 | Article-1 | This is an Article | Wiki-1 | Administrator  |
