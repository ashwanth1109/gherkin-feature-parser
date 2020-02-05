@NotAutomated
@JIRA-Key-MANUSCRIPT-32191
@Schedule
Feature: Schedule - Time Tracking - Last Visited

  Scenario: Last visited case is shown in time tracking menu when user has no working on case
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     | Estimate: current |
      | 17   | Another17 | 2  hours          |
    And The user searches for the "17" search string by using the search box
    And The user clicks the "Start Work" button in the "View Active Case" page
    And The user clicks the "Stop Work" button in the "View Active Case" page
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    When The user clicks the "My Working Schedule" menu item in the sidebar menu
    Then The following cases are shown in the "Change Working To" section in the sidebar menu:
      | This Case: 17 Another17 |

  Scenario: Case details are shown when hovering over last visited case
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     | Estimate: current |
      | 17   | Another17 | 2  hours          |
    And The user searches for the "17" search string by using the search box
    And The user clicks the "Start Work" button in the "View Active Case" page
    And The user clicks the "Stop Work" button in the "View Active Case" page
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    And The user clicks the "My Working Schedule" menu item in the sidebar menu
    And The following cases are shown in the "Change Working To" section in the sidebar menu:
      | This Case: 17 Another17 |
    When The user hovers over the "17 Another17" case in the sidebar menu
    Then The "Case Tooltip" is shown

  Scenario: User can start working on a last visited case
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     | Estimate: current |
      | 17   | Another17 | 2 hours           |
    And The user searches for the "17" search string by using the search box
    And The user clicks the "Start Work" button in the "View Active Case" page
    And The user clicks the "Stop Work" button in the "View Active Case" page
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    And The user clicks the "My Working Schedule" menu item in the sidebar menu
    And The following cases are shown in the "Change Working To" section in the sidebar menu:
      | This Case: 17 Another17 |
    When The user clicks the "his Case: 17 Another17" case in the sidebar menu
    And The user searches for the "17" search string by using the search box
    Then The following case details are shown in the "View Active Case" page:
      | ID | Title     | Working On This Case |
      | 17 | Another17 | Administrator        |
