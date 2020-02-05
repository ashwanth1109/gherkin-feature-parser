@NotAutomated
@JIRA-Key-MANUSCRIPT-32193
@Schedule
Feature: Schedule - Time Tracking - Schedule Items

  Scenario: Closed schedule items are not shown in the time tracking menu
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     | Category      | Assigned To   | Status |
      | 17   | Another17 | Schedule Item | Administrator | Active |
      | 18   | Another18 | Schedule Item | Administrator | Active |
      | 19   | Another19 | Schedule Item | Administrator | Active |
      | 20   | Another20 | Schedule Item | Administrator | Closed |
      | 21   | Another21 | Schedule Item | Administrator | Active |
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    When The user clicks the "My Working Schedule" menu item in the sidebar menu
    Then The following cases are shown in the "Schedule Items" group in the sidebar menu:
      | 17 Another17 |
      | 18 Another18 |
      | 19 Another19 |
      | 21 Another21 |

  Scenario: Schedule items which are not assigned to the current user are not shown in the time tracking menu
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     | Category      | Assigned To   |
      | 17   | Another17 | Schedule Item | Administrator |
      | 18   | Another18 | Schedule Item | Administrator |
      | 19   | Another19 | Schedule Item | Administrator |
      | 20   | Another20 | Schedule Item | Unassigned    |
      | 21   | Another21 | Schedule Item | Administrator |
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    When The user clicks the "My Working Schedule" menu item in the sidebar menu
    Then The following cases are shown in the "Schedule Items" group in the sidebar menu:
      | 17 Another17 |
      | 18 Another18 |
      | 19 Another19 |
      | 21 Another21 |

  Scenario: When user has more than 5 scheduled items the schedule items group is collapsed by default
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     | Category      | Assigned To   |
      | 17   | Another17 | Schedule Item | Administrator |
      | 18   | Another18 | Schedule Item | Administrator |
      | 19   | Another19 | Schedule Item | Administrator |
      | 20   | Another20 | Schedule Item | Administrator |
      | 21   | Another21 | Schedule Item | Administrator |
      | 22   | Another22 | Schedule Item | Administrator |
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    When The user clicks the "My Working Schedule" menu item in the sidebar menu
    Then The "Schedule Items" group is collapsed in the sidebar menu

  Scenario: Case details are shown when hovering over Schedule Items in time tracking menu
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     | Category      | Assigned To   |
      | 17   | Another17 | Schedule Item | Administrator |
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    And The user clicks the "My Working Schedule" menu item in the sidebar menu
    And The following cases are shown in the "Schedule Items" group in the sidebar menu:
      | 17 Another17 |
    When The user hovers over the "17 Another17" case in the sidebar menu
    Then The "Case Tooltip" is shown

  Scenario: User can start working on a schedule item from time tracking menu
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     | Category      | Assigned To   | Estimate: current |
      | 17   | Another17 | Schedule Item | Administrator | 2 hours           |
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    And The user clicks the "My Working Schedule" menu item in the sidebar menu
    And The following cases are shown in the "Schedule Items" group in the sidebar menu:
      | 17 Another17 |
    When The user clicks the "17 Another17" case in the sidebar menu
    And The user searches for the "17" search string by using the search box
    Then The following case details are shown in the "View Active Case" page:
      | ID | Title     | Working On This Case |
      | 17 | Another17 | Administrator        |
