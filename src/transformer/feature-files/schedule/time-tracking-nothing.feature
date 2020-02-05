@NotAutomated
@JIRA-Key-MANUSCRIPT-32192
@Schedule
Feature: Schedule - Time Tracking - Nothing

  Scenario: User can stop working on all cases by using Nothing in time tracking menu
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     | Estimate: current |
      | 17   | Another17 | 2  hours          |
    And The user searches for the "17" search string by using the search box
    And The user clicks the "Start Work" button in the "View Active Case" page
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    When The user clicks the "Nothing" menu item in the sidebar menu
    And The user searches for the "17" search string by using the search box
    Then The following case details are shown in the "View Active Case" page:
      | ID | Title     | Working On This Case |
      | 17 | Another17 |                      |
