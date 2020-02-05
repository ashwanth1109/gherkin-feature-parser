@NotAutomated
@JIRA-Key-MANUSCRIPT-30508
@Search
Feature: Search - Wiki Article - EditedBy

  Scenario: Administrator user can search the list of all wiki articles using the "EditedBy" axis
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
      | ID | Headline  | Type       | Content               | User          |
      | W1 | Article-1 | Edited by  | Yet another idea      | Test UserA    |
      | W1 | Article-1 | Created By | Nobody will ever know | Administrator |
    When The user enters the following details in the "Search" box:
      | Search cases & wikis  |
      | EditedBy:"Test UserA" |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Type         | ID | Headline  | Description        | Wiki   |
      | Wiki Article | W1 | Article-1 | This is an Article | Wiki-1 |
