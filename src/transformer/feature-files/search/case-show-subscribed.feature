@NotAutomated
@JIRA-Key-MANUSCRIPT-31577
@Search
Feature: Search - Case - Show - Subscribed

  Scenario: Administrator user can search subscribed cases using "Show" axis
    Given The user is logged in as Administrator
    And The following cases exist:
      | Category | ID | Title   | Status | Opened By     |
      | Bug      | 17 | Case-17 | Active | Administrator |
    And The following case events exist:
      | Case | Type          | User          |
      | 17   | Subscribed By | Administrator |
    When The user searches for the "Cases Show:Subscribed" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Category | ID | Title   | Status | Opened By     |
      | Bug      | 17 | Case-17 | Active | Administrator |
