@NotAutomated
@JIRA-Key-MANUSCRIPT-31589
@Search
Feature: Search - Case - Backlog - All Cases

  Background:
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title | Backlog Order | Status   | Opened By     |
      | 17 | C1    | 1             | Active   | Administrator |
      | 18 | C2    | 2             | Active   | Administrator |
      | 19 | C3    | 3             | Resolved | Administrator |
      | 20 | C4    | 0             | Resolved | Administrator |
      | 21 | C5    | 0             | Active   | Administrator |
      | 22 | C6    | 2             | Active   | Administrator |
      | 23 | C7    |               | Closed   | Administrator |
      | 24 | C8    |               | Closed   | Administrator |

  Scenario Outline: Administrator user can search all cases in the backlog using "Backlog" axis
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title | Status   | Opened By     |
      | 17   | C1    | Active   | Administrator |
      | 18   | C2    | Active   | Administrator |
      | 19   | C3    | Resolved | Administrator |
      | 22   | C6    | Active   | Administrator |
    Examples:
      | Search String |
      | Backlog:"1.." |
      | Backlog:1..   |

  Scenario Outline: Administrator user can search all cases not in the backlog using "Backlog" axis
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title | Status   | Opened By     |
      | 20   | C4    | Resolved | Administrator |
      | 21   | C5    | Active   | Administrator |
      | 23   | C7    | Closed   | Administrator |
      | 24   | C8    | Closed   | Administrator |
    Examples:
      | Search String  |
      | -Backlog:"1.." |
      | -Backlog:1..   |
