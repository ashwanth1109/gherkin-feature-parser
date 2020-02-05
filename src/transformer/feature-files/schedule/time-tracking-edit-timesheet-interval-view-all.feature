@NotAutomated
@JIRA-Key-MANUSCRIPT-32196
@Schedule
Feature: Schedule - Time Tracking - Edit Timesheet - Interval - View All

  Scenario: User can view all time intervals when editing timesheets
    Given The user is logged in as Administrator
    And The following my working schedule exists:
      | Workday starts at | and ends at                 |
      | "Current time"    | "Current time" + 30 minutes |
    And The following cases exist:
      | Case | Title | Estimate: current | Status   | Category      | Assigned To   |
      | 17   | BugA  | 2 hours           | Active   | Bug           | Administrator |
      | 18   | BugR  | 2 hours           | Resolved | Bug           | Administrator |
      | 19   | BugC  | 2 hours           | Closed   | Bug           | Administrator |
      | 20   | SchA  | 2 hours           | Active   | Schedule Item | Administrator |
      | 21   | Una   | 2 hours           | Active   | Bug           | Unassigned    |
    And The user searches for the "17" search string by using the search box
    And The user clicks the "Start Work" button in the "View Active Case" page
    And The user clicks the "Stop Work" button in the "View Active Case" page
    And The user searches for the "18" search string by using the search box
    And The user clicks the "Start Work" button in the "View Resolved Case" page
    And The user clicks the "Stop Work" button in the "View Resolved Case" page
    And The user searches for the "19" search string by using the search box
    And The user clicks the "Start Work" button in the "View Closed Case" page
    And The user clicks the "Stop Work" button in the "View Closed Case" page
    And The user searches for the "20" search string by using the search box
    And The user clicks the "Start Work" button in the "View Active Case" page
    And The user clicks the "Stop Work" button in the "View Active Case" page
    And The user searches for the "21" search string by using the search box
    And The user clicks the "Start Work" button in the "View Active Case" page
    And The user clicks the "Stop Work" button in the "View Active Case" page
    When The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "Edit Timesheet" link in the sidebar menu
    And The "Edit Timesheet" dialog is opened
    Then The following time intervals are listed in the "Time Intervals" table in the "Edit Timesheet" dialog in the following order:
      | ID | Can Edit | Can Delete | Start                           | End                             | Case | Title |
      | 1  | true     | true       | "Current time within 5 minutes" | "Current time within 5 minutes" | 17   | BugA  |
      | 2  | true     | true       | "Current time within 5 minutes" | "Current time within 5 minutes" | 18   | BugR  |
      | 3  | true     | true       | "Current time within 5 minutes" | "Current time within 5 minutes" | 19   | BugC  |
      | 4  | true     | true       | "Current time within 5 minutes" | "Current time within 5 minutes" | 20   | SchaA |
      | 5  | true     | true       | "Current time within 5 minutes" | "Current time within 5 minutes" | 21   | Una   |

  Scenario: No intervals were recorded for this date message is shown for days without working intervals
    Given The user is logged in as Administrator
    When The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "Edit Timesheet" link in the sidebar menu
    And The "Edit Timesheet" dialog is opened
    Then The "No intervals were recorded for this date." message is shown in the "Edit Timesheet" dialog

