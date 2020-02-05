@NotAutomated
@JIRA-Key-MANUSCRIPT-32190
@Schedule
Feature: Schedule - Time Tracking - Recently Worked On Cases

  Scenario: Last three cases worked on by user are shown in the Recently Worked On group in the sidebar menu
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     | Estimate: current |
      | 17   | Another17 | 2 hours           |
      | 18   | Another18 | 2 hours           |
      | 19   | Another19 | 2 hours           |
      | 20   | Another20 | 2 hours           |
      | 21   | Another21 | 2 hours           |
    And The user searches for the "17" search string by using the search box
    And The user clicks the "Start Work" button in the "View Active Case" page
    And The user searches for the "18" search string by using the search box
    And The user clicks the "Start Work" button in the "View Active Case" page
    And The user searches for the "19" search string by using the search box
    And The user clicks the "Start Work" button in the "View Active Case" page
    And The user searches for the "20" search string by using the search box
    And The user clicks the "Start Work" button in the "View Active Case" page
    And The user searches for the "21" search string by using the search box
    And The user clicks the "Start Work" button in the "View Active Case" page
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    When The user clicks the "My Working Schedule" menu item in the sidebar menu
    Then The following cases are shown in the "Recently Worked On" group in the sidebar menu:
      | 20 Another20 |
      | 19 Another19 |
      | 18 Another18 |

  Scenario: Case details are shown when hovering over Recently Worked On cases
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     | Estimate: current |
      | 17   | Another17 | 2 hours           |
      | 18   | Another18 | 2 hours           |
    And The user searches for the "17" search string by using the search box
    And The user clicks the "Start Work" button in the "View Active Case" page
    And The user searches for the "18" search string by using the search box
    And The user clicks the "Start Work" button in the "View Active Case" page
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    And The user clicks the "My Working Schedule" menu item in the sidebar menu
    And The following cases are shown in the "Recently Worked On" group in the sidebar menu:
      | 18 Another18 |
    When The user hovers over the "18 Another18" case in the sidebar menu
    Then The "Case Tooltip" is shown

  Scenario: User can start working on a recently worked on case
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     | Estimate: current |
      | 17   | Another17 | 2 hours           |
      | 18   | Another18 | 2 hours           |
    And The user searches for the "17" search string by using the search box
    And The user clicks the "Start Work" button in the "View Active Case" page
    And The user searches for the "18" search string by using the search box
    And The user clicks the "Start Work" button in the "View Active Case" page
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    And The user clicks the "My Working Schedule" menu item in the sidebar menu
    And The following cases are shown in the "Recently Worked On" group in the sidebar menu:
      | 18 Another18 |
    When The user clicks the "18 Another18" case in the sidebar menu
    And The user searches for the "18" search string by using the search box
    Then The following case details are shown in the "View Active Case" page:
      | ID | Title     | Working On This Case |
      | 18 | Another18 | Administrator        |
