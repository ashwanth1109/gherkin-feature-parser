@NotAutomated
@JIRA-Key-MANUSCRIPT-31568
@Search
Feature: Search - Case - ixBug

  Scenario Outline: Administrator user can search cases case number specified using "ixBug" axis
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title      | Status | Opened By     |
      | 24   | Users      | Active | Administrator |
      | 25   | Edit Users | Closed | Administrator |
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title | Status | Opened By     |
      | 24   | Users | Active | Administrator |
    Examples:
      | Search String |
      | ixBug:24      |
      | ixBug:"24"    |

  Scenario Outline: Administrator user can search for multiple cases matching the case number specified in search field using "ixBug" axis separated by "OR"
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title      | Status | Opened By     |
      | 24   | Users      | Active | Administrator |
      | 25   | Edit Users | Closed | Administrator |
    When The user enters the following details in the "Search cases & wikis" search box:
      | Search cases & wikis |
      | <Search String>      |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title      | Status | Opened By     |
      | 24   | Users      | Active | Administrator |
      | 25   | Edit Users | Closed | Administrator |
    Examples:
      | Search String            |
      | ixBug:24 OR ixBug:25     |
      | ixBug:"24" OR ixBug:"25" |
