@NotAutomated
@JIRA-Key-MANUSCRIPT-30521
@Search
Feature: Search - Wiki Article - LastViewed

  Scenario: Administrator user can search the list of all wiki article last viewed on the date specified using the "LastViewed" axis
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Wiki   |
      | Wiki-1 |
    And The following wiki articles exist:
      | ID | Page Title | Description         | Wiki   |
      | W1 | Article-1  | This is an Article  | Wiki-1 |
    And The following wiki article events exist:
      | ID | Headline  | Type           | Content               | User          | Date       |
      | W1 | Article-1 | Created By     | Nobody will ever know | Administrator | 2019/12/12 |
      | W1 | Article-1 | Last Viewed by | Yet another idea      | Administrator | 2020/01/01 |
    When The user enters the following details in the "Search" box:
      | Search cases & wikis     |
      | LastViewed:"2020/01/01"  |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Type         | ID | Headline  | Description        | Wiki   | Last Edited By | Last Viewed on  |
      | Wiki Article | W1 | Article-1 | This is an Article | Wiki-1 | Administrator  | 2020/01/01      |
