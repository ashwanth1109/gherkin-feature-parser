@NotAutomated
@JIRA-Key-MANUSCRIPT-31585
@Search
Feature: Search - Case - Starred By - Me

  Scenario: Administrator users can search the list of all cases starred by them using the "StarredBy" axis
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
      | 17   | Opened By  | Yet another idea | Test UserA    |
      | 17   | Starred By |                  | Administrator |
      | 18   | Starred By |                  | Test UserA    |
    When The user searches for the "StarredBy:me" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Category | ID | Title   | Status | Opened By  |
      | Bug      | 17 | Case-17 | Active | Test UserA |
