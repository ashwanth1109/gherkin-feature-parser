@NotAutomated
@JIRA-Key-MANUSCRIPT-31559
@Search
Feature: Search - Wiki Article - Viewed By

  Scenario: Administrator user can search the list of all wiki articles viewed by a user using the "ViewedBy" axis
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Wiki   |
      | Wiki-1 |
    And The following users exist:
      | Full Name  | Email                    | Account Type | Status |
      | Test UserA | testusera@manuscript.com | Normal       | Active |
    And The following wiki articles exist:
      | ID | Page Title | Description        | Wiki   |
      | W2 | Article-2  | This is an Article | Wiki-1 |
    And The following wiki article events exist:
      | ID | Headline  | Type       | Content               | User          |
      | W2 | Article-1 | Created By | Nobody will ever know | Administrator |
      | W2 | Article-1 | Edited By  | Yet another idea      | Administrator |
      | W2 | Article-1 | Viewed by  |                       | Test UserA    |
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search String         |
      | ViewedBy:"Test UserA" |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Type         | ID | Headline  | Wiki   | Last Edited By |
      | Wiki Article | W2 | Article-2 | Wiki-1 | Administrator  |
