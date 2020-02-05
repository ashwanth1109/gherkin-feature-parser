@NotAutomated
@JIRA-Key-MANUSCRIPT-30520
@Search
Feature: Search - Wiki Article - Viewed

  Scenario: Administrator user can search the list of all wiki article viewed on the date specified using the "Viewed" axis
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Wiki   |
      | Wiki-1 |
    And The following wiki articles exist:
      | ID | Page Title | Description         | Wiki   |
      | W1 | Article-1  | This is an Article  | Wiki-1 |
    And The following wiki article events exist:
      | ID | Headline  | Type       | Content               | User          | Date       |
      | W1 | Article-1 | Created By | Nobody will ever know | Administrator | 2019/12/12 |
      | W1 | Article-1 | Viewed by  | Yet another idea      | Administrator | 2020/01/01 |
    When The user enters the following details in the "Search" box:
      | Search cases & wikis |
      | Viewed:"2020/01/01"  |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Type          | ID | Headline  | Description        | Wiki   | Last Edited By | Viewed on  |
      | Wiki Article  | W1 | Article-1 | This is an Article | Wiki-1 | Administrator  | 2020/01/01 |
