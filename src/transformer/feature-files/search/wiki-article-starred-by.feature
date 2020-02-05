@NotAutomated
@JIRA-Key-MANUSCRIPT-31586
@Search
Feature: Search - Wiki Article - Starred By

  Scenario: Administrator user can search the list of all wiki articles starred by a user using the "StarredBy" axis
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
      | W2 | Article-2 | Created By | Nobody will ever know | Administrator |
      | W3 | Article-3 | Edited By  | Yet another idea      | Test UserA    |
      | W2 | Article-2 | Starred by |                       | Test UserA    |
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search String          |
      | StarredBy:"Test UserA" |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Type         | ID | Headline  | Wiki   | Last Edited By |
      | Wiki Article | W2 | Article-2 | Wiki-1 | Administrator  |
