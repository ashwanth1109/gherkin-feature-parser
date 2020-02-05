@NotAutomated
@JIRA-Key-MANUSCRIPT-31560
@Search
Feature: Search - Wiki Article - Viewed By - Me

  Scenario: Administrator users can search the list of all wiki articles viewed by them using the "ViewedBy" axis
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
      | W2 | Article-1 | Created By | Nobody will ever know | Test UserA    |
      | W2 | Article-1 | Edited By  | Yet another idea      | Test UserA    |
      | W2 | Article-1 | Viewed by  |                       | Administrator |
    When The user searches for the "ViewedBy:me" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Type         | ID | Headline  | Wiki   | Last Edited By |
      | Wiki Article | W2 | Article-2 | Wiki-1 | Test UserA     |
