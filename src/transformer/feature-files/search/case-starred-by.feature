@NotAutomated
@JIRA-Key-MANUSCRIPT-31584
@Search
Feature: Search - Case - Starred By

  Scenario: Administrator user can search the list of all cases starred by a user using the "StarredBy" axis
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name  | Email                    | Account Type | Status |
      | Test UserA | testusera@manuscript.com | Normal       | Active |
    And The following cases exist:
      | Category | ID | Title   | Status |
      | Bug      | 17 | Case-17 | Active |
      | Bug      | 18 | Case-18 | Active |
    And The following case events exist:
      | Case | Type       | Content          | User          |
      | 17   | Opened By  | Yet another idea | Administrator |
      | 17   | Starred By |                  | Test UserA    |
      | 18   | Starred By |                  | Administrator |
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search String          |
      | StarredBy:"Test UserA" |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Category | ID | Title   | Status | Opened By     |
      | Bug      | 17 | Case-17 | Active | Administrator |
