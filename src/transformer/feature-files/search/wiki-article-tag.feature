@NotAutomated
@JIRA-Key-MANUSCRIPT-31530
@Search
Feature: Search - Wiki Article - Tag

  Scenario: Administrator user can search all wiki articles using the axis "Tag"
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Wiki   |
      | Wiki-1 |
    And The following wiki articles exist:
      | ID | Page Title | Description         | Wiki   | Tags    |
      | W2 | Article-1  | This is an Article  | Wiki-1 | test123 |
    When The user enters the following details in the "Search" box:
      | Search cases & wikis |
      | Tag:test123          |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Type         | Headline  | Description        |
      | Wiki Article | Article-1 | This is an Article |
