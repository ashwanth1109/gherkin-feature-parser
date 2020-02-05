@NotAutomated
@JIRA-Key-MANUSCRIPT-32201
@Schedule
Feature: Schedule - Time Tracking - Edit Timesheet - Interval - Case Link

  Scenario: User can open case page form time interval by clicking case id
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
    And The user clicks the "17" link for the "1" time interval row in the "Edit Timesheet" dialog
    Then The "View Active Case" page is shown
    And The following case details are shown in the "View Active Case" page:
      | ID | Title |
      | 17 | BugA  |


