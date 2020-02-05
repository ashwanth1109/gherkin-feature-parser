@NotAutomated
@JIRA-Key-MANUSCRIPT-32194
@Schedule
Feature: Schedule - Time Tracking - Collapse Expand groups

  Scenario Outline: User can collapse and expand groups in time tracking menu
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     | Estimate: current | Category      | Assigned To   |
      | 17   | Another17 | 2 hours           | Bug           | Administrator |
      | 18   | Another18 | 2 hours           | Bug           | Administrator |
      | 19   | Another19 | 2 hours           | Schedule Item | Administrator |
    And The following favorite cases exist:
      | Case | User          |
      | 18   | Administrator |
    And The user searches for the "17" search string by using the search box
    And The user clicks the "Start Work" button in the "View Active Case" page
    And The user clicks the "Stop Work" button in the "View Active Case" page
    And The user hovers over the "Time Tracking" menu item in the sidebar
    When The user clicks the "-" button for the "<Group Name>" group in the "Change Working To" section in the sidebar menu
    Then The "<Group Name>" group is collapsed
    And The user clicks the "+" button for the "<Group Name>" group in the "Change Working To" section in the sidebar menu
    And The "<Group Name>" group is expanded
    Examples:
      | Group Name         |
      | Recently Worked On |
      | Schedule Items     |
      | Starred            |
