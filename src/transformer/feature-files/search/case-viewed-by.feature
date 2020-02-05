@NotAutomated
@JIRA-Key-MANUSCRIPT-31557
@Search
Feature: Search - Case - Viewed By

  Scenario: Administrator user can search the list of all cases viewed by a user using the "ViewedBy" axis
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name  | Email                    | Account Type | Status |
      | Test UserA | testusera@manuscript.com | Normal       | Active |
    And The following cases exist:
      | Category | ID | Title   | Status | Description     | Project |
      | Bug      | 17 | Case-17 | Active | This is a Case. | Inbox   |
    And The following case events exist:
      | Case | Type      | Content          | User          |
      | 17   | Opened By | Yet another idea | Administrator |
      | 17   | Viewed By |                  | Test UserA    |
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search String         |
      | ViewedBy:"Test UserA" |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Category | ID | Title   | Status | Opened By     |
      | Bug      | 17 | Case-17 | Active | Administrator |
