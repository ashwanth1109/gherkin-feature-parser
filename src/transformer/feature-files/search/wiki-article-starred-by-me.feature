@NotAutomated
@JIRA-Key-MANUSCRIPT-31587
@Search
Feature: Search - Wiki Article - Starred By - Me

  Scenario: Administrator users can search the list of all wiki articles starred by them using the "StarredBy" axis
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
      | W3 | Article-3  | This is an Article | Wiki-1 |
    And The following wiki article events exist:
      | ID | Headline  | Type       | Content               | User          |
      | W2 | Article-2 | Created By | Nobody will ever know | Test UserA    |
      | W3 | Article-3 | Edited By  | Yet another idea      | Administrator |
      | W2 | Article-2 | Starred by |                       | Administrator |
    When The user searches for the "StarredBy:me" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Type         | ID | Headline  | Wiki   | Last Edited By |
      | Wiki Article | W2 | Article-2 | Wiki-1 | Test UserA     |
