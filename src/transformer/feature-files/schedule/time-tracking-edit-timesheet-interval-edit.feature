@NotAutomated
@JIRA-Key-MANUSCRIPT-32198
@Schedule
Feature: Schedule - Time Tracking - Edit Timesheet - Interval - Edit

  Scenario: User can edit a time interval
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title | Estimate: current | Status | Category | Assigned To   |
      | 17   | BugA  | 2 hours           | Active | Bug      | Administrator |
      | 18   | BugB  | 2 hours           | Active | Bug      | Administrator |
    And The following time intervals exist:
      | ID | Date          | User          | Can Edit | Can Delete | Start          | End                | Case | Title |
      | 1  | "Current Day" | Administrator | true     | true       | "Current time" | "Current time" + 5 | 17   | BugA  |
    When The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "Edit Timesheet" link in the sidebar menu
    And The "Edit Timesheet" dialog is opened
    And The user clicks the "Edit" icon for the "1" time interval in the "Edit Timesheet" dialog
    And The user enters the following details in the "Edit Interval" dialog:
      | Start    | End      | Case |
      | 12:00 AM | 12:30 AM | 18   |
    And The user clicks the "OK" button in the "Edit Interval" dialog
    Then The following time intervals are listed in the "Time Intervals" table in the "Edit Timesheet" dialog in the following order:
      | ID | Can Edit | Can Delete | Start    | End      | Case | Title |
      | 1  | true     | true       | 12:00 AM | 12:30 AM | 18   | BugB  |
