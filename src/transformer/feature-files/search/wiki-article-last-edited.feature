@NotAutomated
@JIRA-Key-MANUSCRIPT-30519
@Search
Feature: Search - Wiki Article - LastEdited

  Scenario: Administrator user can search the list of all wiki article last edited on the date specified using the "LastEdited" axis
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name  | Email                    | Account Type | Status |
      | Test UserA | testusera@manuscript.com | Normal       | Active |
    And The following wikis exist:
      | Wiki   |
      | Wiki-1 |
    And The following wiki articles exist:
      | ID | Page Title | Description         | Wiki   |
      | W1 | Article-1  | This is an Article  | Wiki-1 |
    And The following wiki article events exist:
      | ID | Headline  | Type           | Content               | User          | Date       |
      | W1 | Article-1 | Edited by      | Yet another idea      | Administrator | 2019/12/12 |
      | W1 | Article-1 | Created By     | Nobody will ever know | Administrator | 2019/12/12 |
      | W1 | Article-1 | Last Edited By | Nobody will ever know | Test UserA    | 2020/01/01 |
    When The user enters the following details in the "Search" box:
      | Search cases & wikis      |
      | LastEdited:"2020/01/01"   |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Type          | ID | Headline  | Description        | Wiki   | Last Edited By | Last Edited On |
      | Wiki Article  | W1 | Article-1 | This is an Article | Wiki-1 | Test UserA     | 2020/01/01     |
