@NotAutomated
@JIRA-Key-MANUSCRIPT-32204
@Schedule
Feature: Schedule - Time Tracking - Edit Timesheet - Interval - Title Tooltip

  Scenario: User can see case details by hovering over case title for the time interval
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title | Estimate: current | Status | Category | Assigned To   |
      | 17   | BugA  | 2 hours           | Active | Bug      | Administrator |
    And The following time intervals exist:
      | ID | Date          | User          | Can Edit | Can Delete | Start          | End                | Case | Title |
      | 1  | "Current Day" | Administrator | true     | true       | "Current time" | "Current time" + 5 | 17   | BugA  |
    When The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "Edit Timesheet" link in the sidebar menu
    And The "Edit Timesheet" dialog is opened
    And The user hovers over the "BugA" link for the "1" row in the "Edit Timesheet" dialog
    Then The "Case Tooltip" is shown
