@NotAutomated
@JIRA-Key-MANUSCRIPT-31588
@Search
Feature: Search - Case - Backlog

  Scenario: Administrator user can search cases using Backlog axis
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title | Backlog Order | Status   | Opened By     |
      | 17 | C1    | 1             | Active   | Administrator |
      | 18 | C2    | 2             | Active   | Administrator |
      | 19 | C3    | 3             | Resolved | Administrator |
      | 20 | C4    | 2             | Resolved | Administrator |
    When The user searches for the "Backlog:2" search string by using the search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title | Status   | Opened By     |
      | 18   | C2    | Active   | Administrator |
      | 20   | C4    | Resolved | Administrator |
