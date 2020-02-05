@NotAutomated
@JIRA-Key-MANUSCRIPT-32195
@Schedule
Feature: Schedule - Time Tracking - Edit Timesheet - Select days from calendar

  Scenario: User can navigate between days when editing timesheet
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title | Estimate: current | Status | Category | Assigned To   |
      | 17   | BugA  | 2 hours           | Active | Bug      | Administrator |
    And The following time intervals exist:
      | ID | Date              | User          | Can Edit | Can Delete | Start                           | End                             | Case | Title |
      | 1  | "Current Day - 1" | Administrator | true     | true       | "Current time within 5 minutes" | "Current time within 5 minutes" | 17   | BugA  |
      | 2  | "Current Day - 2" | Administrator | true     | true       | "Current time within 5 minutes" | "Current time within 5 minutes" | 17   | BugA  |
      | 3  | "Current Day"     | Administrator | true     | true       | "Current time within 5 minutes" | "Current time within 5 minutes" | 17   | BugA  |
    When The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "Edit Timesheet" link in the sidebar menu
    And The "Edit Timesheet" dialog is opened
    Then The following time intervals are listed in the "Time Intervals" table in the "Edit Timesheet" dialog in the following order:
      | ID | Can Edit | Can Delete | Start                           | End                             | Case | Title |
      | 1  | true     | true       | "Current time within 5 minutes" | "Current time within 5 minutes" | 17   | BugA  |
    And The user clicks the "<-" button in the "Edit Timesheet" dialog
    And The following time intervals are listed in the "Time Intervals" table in the "Edit Timesheet" dialog in the following order:
      | ID | Can Edit | Can Delete | Start                           | End                             | Case | Title |
      | 2  | true     | true       | "Current time within 5 minutes" | "Current time within 5 minutes" | 17   | BugA  |
    And The "Date" title contains the "Current Day - 1" date in the "DayOfWeek mm/dd/yyyy (Yesterday)" date format in the "Edit Timesheet" dialog
    And The user clicks the "<-" button in the "Edit Timesheet" dialog
    And The following time intervals are listed in the "Time Intervals" table in the "Edit Timesheet" dialog in the following order:
      | ID | Can Edit | Can Delete | Start                           | End                             | Case | Title |
      | 3  | true     | true       | "Current time within 5 minutes" | "Current time within 5 minutes" | 17   | BugA  |
    And The "Date" title contains the "Current Day - 2" date in the "DayOfWeek mm/dd/yyyy" date format in the "Edit Timesheet" dialog
    And The user clicks the "->" button in the "Edit Timesheet" dialog
    And The user clicks the "->" button in the "Edit Timesheet" dialog
    And The "Date" title contains the "Current Day" date in the "DayOfWeek mm/dd/yyyy (Today)" date format in the "Edit Timesheet" dialog

  Scenario: User cannot select future days through calendar when editing timesheet
    Given The user is logged in as Administrator
    When The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "Edit Timesheet" link in the sidebar menu
    And The "Edit Timesheet" dialog is opened
    And The user clicks the "Calendar" icon in the "Edit Timesheet" dialog
    Then The user cannot select future days in the "Calendar" dialog

  Scenario: User cannot select future months through calendar when editing timesheet
    Given The user is logged in as Administrator
    When The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "Edit Timesheet" link in the sidebar menu
    And The "Edit Timesheet" dialog is opened
    And The user clicks the "Calendar" icon in the "Edit Timesheet" dialog
    Then The user cannot select future months in the "Calendar" dialog

  Scenario: User can select previous month through calendar when editing timesheet
    Given The user is logged in as Administrator
    When The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "Edit Timesheet" link in the sidebar menu
    And The "Edit Timesheet" dialog is opened
    And The user clicks the "Calendar" icon in the "Edit Timesheet" dialog
    And The user clicks the "<-" icon in the "Calendar" dialog
    Then The previous month is shown in the "Calendar" dialog

  Scenario: User can pick a day through calendar when editing timesheet
    Given The user is logged in as Administrator
    When The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "Edit Timesheet" link in the sidebar menu
    And The "Edit Timesheet" dialog is opened
    And The user clicks the "Calendar" icon in the "Edit Timesheet" dialog
    And The user selects the previous day in the "Calendar" dialog
    Then The "Date" title contains the "Current Day - 1" date in the "DayOfWeek mm/dd/yyyy (Yesterday)" date format in the "Edit Timesheet" dialog

  Scenario: User can pick today through calendar when editing timesheet
    Given The user is logged in as Administrator
    When The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "Edit Timesheet" link in the sidebar menu
    And The "Edit Timesheet" dialog is opened
    And The user clicks the "Calendar" icon in the "Edit Timesheet" dialog
    And The user selects the previous day in the "Calendar" dialog
    And The user clicks the "Calendar" icon in the "Edit Timesheet" dialog
    And The user clicks the "Today" link in the "Calendar" dialog
    Then The "Date" title contains the "Current Day" date in the "DayOfWeek mm/dd/yyyy (Today)" date format in the "Edit Timesheet" dialog
