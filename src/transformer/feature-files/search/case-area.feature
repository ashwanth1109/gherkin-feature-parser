@NotAutomated
@JIRA-Key-MANUSCRIPT-31564
@Search
Feature: Search - Case - Area

  Scenario: Administrator user can search cases in the specified area using "Area" axis
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title      | Status   | Area       | Opened By     |
      | 24   | Users      | Active   | Resources  | Administrator |
      | 25   | Edit Users | Closed   | Guidelines | Administrator |
      | 26   | Area       | Active   | Resources  | Administrator |
      | 27   | Add Users  | Closed   | Resources  | Administrator |
      | 28   | Edit Area  | Resolved | Guidelines | Administrator |
      | 29   | Edit Group | Resolved | Guidelines | Administrator |
    When The user searches for the "Area:Resources" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title     | Status | Opened By     |
      | 24   | Users     | Active | Administrator |
      | 26   | Area      | Active | Administrator |
      | 27   | Add Users | Closed | Administrator |

  Scenario: Administrator user can search for multiple cases matching the specified area in search field using "Area" axis separated by "OR"
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title        | Status   | Area       | Opened By     |
      | 24   | Users        | Active   | Resources  | Administrator |
      | 25   | Edit Users   | Closed   | Guidelines | Administrator |
      | 26   | Area         | Active   | Resources  | Administrator |
      | 27   | Add Users    | Closed   | Resources  | Administrator |
      | 28   | Edit Area    | Resolved | Guidelines | Administrator |
      | 29   | Edit Group   | Active   | Guidelines | Administrator |
      | 30   | Delete Group | Resolved | Undecided  | Administrator |
    When The user searches for the "Area:Guidelines or Area:Undecided" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
    And The following cases exist:
      | Case | Title        | Status   | Opened By     |
      | 29   | Edit Group   | Active   | Administrator |
      | 28   | Edit Area    | Resolved | Administrator |
      | 30   | Delete Group | Resolved | Administrator |
      | 25   | Edit Users   | Closed   | Administrator |
