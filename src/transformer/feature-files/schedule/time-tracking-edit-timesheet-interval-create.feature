@NotAutomated
@JIRA-Key-MANUSCRIPT-32197
@Schedule
Feature: Schedule - Time Tracking - Edit Timesheet - Interval - Create

  Scenario: User can create new time interval
    Given The user is logged in as Administrator
    And The following my working schedule exists:
      | Workday starts at | and ends at                 |
      | "Current time"    | "Current time" + 30 minutes |
    And The following cases exist:
      | Case | Title | Estimate: current | Status | Category | Assigned To   |
      | 17   | BugA  | 2 hours           | Active | Bug      | Administrator |
    And The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "Edit Timesheet" link in the sidebar menu
    And The "Edit Timesheet" dialog is opened
    And The user clicks the "Add Interval" button in the "Edit Timesheet" dialog
    And The "Add Interval" dialog is shown
    When The user enters the following details in the "Add Interval" dialog:
      | Start          | End                        | Case |
      | "Current time" | "Current time" + 5 minutes | 17   |
    And The user clicks the "OK" button in the "Add Interval" dialog
    Then The following time intervals are listed in the "Time Intervals" table in the "Edit Timesheet" dialog in the following order:
      | ID | Can Edit | Can Delete | Start                           | End                             | Case | Title |
      | 1  | true     | true       | "Current time within 5 minutes" | "Current time within 5 minutes" | 17   | BugA  |

  Scenario Outline: User can search cases by id or title when creating time interval
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title   | Estimate: current | Status | Category | Assigned To   |
      | 17   | Another | 2 hours           | Active | Bug      | Administrator |
    And The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "Edit Timesheet" link in the sidebar menu
    And The "Edit Timesheet" dialog is opened
    And The user clicks the "Add Interval" button in the "Edit Timesheet" dialog
    And The "Add Interval" dialog is shown
    When The user enters the following details in the "Case" dropdown in the "Edit Timesheet" dialog:
      | <Term> |
    Then The following options are shown in the "Case" dropdown:
      | 17 Another |
    Examples:
      | Term    |
      | 17      |
      | Another |

  Scenario Outline: No results are shown when less than 3 letters is typed in case search when creating time interval
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title   |
      | 17   | Another |
    And The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "Edit Timesheet" link in the sidebar menu
    And The "Edit Timesheet" dialog is opened
    And The user clicks the "Add Interval" button in the "Edit Timesheet" dialog
    And The "Add Interval" dialog is shown
    When The user enters the following details in the "Case" dropdown in the "Edit Timesheet" dialog:
      | <Term> |
    Then The following options are shown in the "Case" dropdown:
      |  |
    Examples:
      | Term |
      | A    |
      | An   |
      | Ano  |

  Scenario: Results are shown when 4 letters are typed in case search when creating time interval
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title   |
      | 17   | Another |
    And The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "Edit Timesheet" link in the sidebar menu
    And The "Edit Timesheet" dialog is opened
    And The user clicks the "Add Interval" button in the "Edit Timesheet" dialog
    And The "Add Interval" dialog is shown
    When The user enters the following details in the "Case" dropdown in the "Edit Timesheet" dialog:
      | Anot |
    Then The following options are shown in the "Case" dropdown:
      | 17 Another |

  Scenario: Cases from projects that user has no access to are not found in case search when creating time interval
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following users exist:
      | Full name | Email         | Account Type | Status | Password |
      | Lion King | lk@jungle.com | Normal       | Active | lking    |
    And The following cases exist:
      | Case | Title   | Project |
      | 17   | Another | Ninja   |
    And The user logs out
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email         | Password |
      | lk@jungle.com | lking    |
    And The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "Edit Timesheet" link in the sidebar menu
    And The "Edit Timesheet" dialog is opened
    And The user clicks the "Add Interval" button in the "Edit Timesheet" dialog
    And The "Add Interval" dialog is shown
    When The user enters the following details in the "Case" dropdown in the "Edit Timesheet" dialog:
      | Anot |
    Then The following options are shown in the "Case" dropdown:
      |  |

  Scenario: Cases from project area SPAM are not visible in case search when creating time interval
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name | Completion Date | Backlog | Start Date | Start Date Note |
      | Ninja   | false        | true         | Hurricane      | 5/16/2022       | false   | 5/15/2022  | It starts soon  |
    And The following cases exist:
      | Case | Title        | Project | Project Area | Milestone |
      | 17   | probablyspam | Inbox   | Spam         | Undecided |
    And The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "Edit Timesheet" link in the sidebar menu
    And The "Edit Timesheet" dialog is opened
    And The user clicks the "Add Interval" button in the "Edit Timesheet" dialog
    And The "Add Interval" dialog is shown
    When The user enters the following details in the "Case" dropdown in the "Edit Timesheet" dialog:
      | probablyspam |
    Then The following options are shown in the "Case" dropdown:
      |  |

  Scenario: Active cases are shown first in case search when creating time interval
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title    | Status   |
      | 17   | AnotherR | Resolved |
      | 18   | AnotherA | Active   |
      | 19   | AnotherC | Closed   |
    And The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "Edit Timesheet" link in the sidebar menu
    And The "Edit Timesheet" dialog is opened
    And The user clicks the "Add Interval" button in the "Edit Timesheet" dialog
    And The "Add Interval" dialog is shown
    When The user enters the following details in the "Case" dropdown in the "Edit Timesheet" dialog:
      | Another |
    Then The following options are shown in the "Case" dropdown:
      | 18 AnotherA |
      | 19 AnotherC |
      | 17 AnotherR |

  Scenario: Most recently changed cases are shown first in case search when creating time interval
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     |
      | 17   | Another17 |
      | 18   | Another18 |
      | 19   | Another19 |
    And The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "Edit Timesheet" link in the sidebar menu
    And The "Edit Timesheet" dialog is opened
    And The user clicks the "Add Interval" button in the "Edit Timesheet" dialog
    And The "Add Interval" dialog is shown
    When The user enters the following details in the "Case" dropdown in the "Edit Timesheet" dialog:
      | Another |
    Then The following options are shown in the "Case" dropdown:
      | 19 Another19 |
      | 18 Another18 |
      | 17 Another17 |

  Scenario: Only 15 cases are shown in case search when creating time interval
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title                      |
      | 17   | Case in onboarding project |
      | 18   | Another 18                 |
      | 19   | Another 19                 |
      | 20   | Another 20                 |
      | 21   | Another 21                 |
      | 22   | Another 22                 |
      | 23   | Another 23                 |
      | 24   | Another 24                 |
      | 25   | Another 25                 |
      | 26   | Another 26                 |
      | 27   | Another 27                 |
      | 28   | Another 28                 |
      | 29   | Another 29                 |
      | 30   | Another 30                 |
      | 31   | Another 31                 |
      | 32   | Another 32                 |
      | 33   | Another 33                 |
      | 34   | Another 34                 |
      | 35   | Another 35                 |
      | 36   | Another 36                 |
      | 37   | Another 37                 |
      | 38   | Another 38                 |
      | 39   | Another 39                 |
      | 40   | Another 40                 |
    And The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "Edit Timesheet" link in the sidebar menu
    And The "Edit Timesheet" dialog is opened
    And The user clicks the "Add Interval" button in the "Edit Timesheet" dialog
    And The "Add Interval" dialog is shown
    When The user enters the following details in the "Case" dropdown in the "Edit Timesheet" dialog:
      | Another |
    Then The following options are shown in the "Case" dropdown:
      | 32 Another 32 |
      | 31 Another 31 |
      | 30 Another 30 |
      | 29 Another 29 |
      | 28 Another 28 |
      | 27 Another 27 |
      | 26 Another 26 |
      | 25 Another 25 |
      | 24 Another 24 |
      | 23 Another 23 |
      | 22 Another 22 |
      | 21 Another 21 |
      | 20 Another 20 |
      | 19 Another 19 |
      | 18 Another 18 |


  Scenario: When adding a new time interval user can select start and end times using time pickers
    Given The user is logged in as Administrator
    And The following my working schedule exists:
      | Workday starts at | and ends at                 |
      | "Current time"    | "Current time" + 30 minutes |
    And The following cases exist:
      | Case | Title | Estimate: current | Status | Category | Assigned To   |
      | 17   | BugA  | 2 hours           | Active | Bug      | Administrator |
    And The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "Edit Timesheet" link in the sidebar menu
    And The "Edit Timesheet" dialog is opened
    And The user clicks the "Add Interval" button in the "Edit Timesheet" dialog
    And The "Add Interval" dialog is shown
    When The user clicks the "Start" clock icon in the "Add Interval" dialog
    Then The following options are shown in the "Start" dropdown:
      | 12:00 AM |
      | 12:30 AM |
      | 1:00 AM  |
      | 1:30 AM  |
      | 2:00 AM  |
      | 2:30 AM  |
      | 3:00 AM  |
      | 3:30 AM  |
      | 4:00 AM  |
      | 4:30 AM  |
      | 5:00 AM  |
      | 5:30 AM  |
      | 6:00 AM  |
      | 6:30 AM  |
      | 7:00 AM  |
      | 7:30 AM  |
      | 8:00 AM  |
      | 8:30 AM  |
      | 9:00 AM  |
      | 9:30 AM  |
      | 10:00 AM |
      | 10:30 AM |
      | 11:00 AM |
      | 11:30 AM |
      | 12:00 PM |
      | 12:30 PM |
      | 1:00 PM  |
      | 1:30 PM  |
      | 2:00 PM  |
      | 2:30 PM  |
      | 3:00 PM  |
      | 3:30 PM  |
      | 4:00 PM  |
      | 4:30 PM  |
      | 5:00 PM  |
      | 5:30 PM  |
      | 6:00 PM  |
      | 6:30 PM  |
      | 7:00 PM  |
      | 7:30 PM  |
      | 8:00 PM  |
      | 8:30 PM  |
      | 9:00 PM  |
      | 9:30 PM  |
      | 10:00 PM |
      | 10:30 PM |
      | 11:00 PM |
      | 11:30 PM |
    And The user selects the "11:00 PM" option from the "Start" dropdown
    And The user clicks the "End" clock icon in the "Add Interval" dialog
    And The following options are shown in the "End" dropdown:
      | 12:00 AM |
      | 12:30 AM |
      | 1:00 AM  |
      | 1:30 AM  |
      | 2:00 AM  |
      | 2:30 AM  |
      | 3:00 AM  |
      | 3:30 AM  |
      | 4:00 AM  |
      | 4:30 AM  |
      | 5:00 AM  |
      | 5:30 AM  |
      | 6:00 AM  |
      | 6:30 AM  |
      | 7:00 AM  |
      | 7:30 AM  |
      | 8:00 AM  |
      | 8:30 AM  |
      | 9:00 AM  |
      | 9:30 AM  |
      | 10:00 AM |
      | 10:30 AM |
      | 11:00 AM |
      | 11:30 AM |
      | 12:00 PM |
      | 12:30 PM |
      | 1:00 PM  |
      | 1:30 PM  |
      | 2:00 PM  |
      | 2:30 PM  |
      | 3:00 PM  |
      | 3:30 PM  |
      | 4:00 PM  |
      | 4:30 PM  |
      | 5:00 PM  |
      | 5:30 PM  |
      | 6:00 PM  |
      | 6:30 PM  |
      | 7:00 PM  |
      | 7:30 PM  |
      | 8:00 PM  |
      | 8:30 PM  |
      | 9:00 PM  |
      | 9:30 PM  |
      | 10:00 PM |
      | 10:30 PM |
      | 11:00 PM |
      | 11:30 PM |
    And The user selects the "11:30 PM" option from the "End" dropdown
    And The user enters the following details in the "Add Interval" dialog:
      | Case |
      | 17   |
    And The user clicks the "OK" button in the "Add Interval" dialog
    And The following time intervals are listed in the "Time Intervals" table in the "Edit Timesheet" dialog in the following order:
      | ID | Can Edit | Can Delete | Start    | End      | Case | Title |
      | 1  | true     | true       | 11:00 PM | 11:30 PM | 17   | BugA  |

  Scenario: User cannot set start time later than end time when creating new time interval
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title | Estimate: current | Status | Category | Assigned To   |
      | 17   | BugA  | 2 hours           | Active | Bug      | Administrator |
    And The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "Edit Timesheet" link in the sidebar menu
    And The "Edit Timesheet" dialog is opened
    And The user clicks the "Add Interval" button in the "Edit Timesheet" dialog
    And The "Add Interval" dialog is shown
    When The user enters the following details in the "Add Interval" dialog:
      | Start    | End      | Case |
      | 11:30 PM | 11:00 PM | 17   |
    And The user clicks the "OK" button in the "Add Interval" dialog
    Then The "End time occurs before start time." error message is shown in the "Add Interval" dialog

  Scenario: When selecting a case without estimation user is prompted to provide it when creating time interval
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title | Status | Category | Assigned To   |
      | 17   | BugA  | Active | Bug      | Administrator |
    And The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "Edit Timesheet" link in the sidebar menu
    And The "Edit Timesheet" dialog is opened
    And The user clicks the "Add Interval" button in the "Edit Timesheet" dialog
    And The "Add Interval" dialog is shown
    When The user enters the following details in the "Add Interval" dialog:
      | Start    | End      | Case |
      | 11:00 PM | 11:30 PM | 17   |
    And The user clicks the "OK" button in the "Add Interval" dialog
    Then The "Case 17 requires an estimate" error message is shown in the "Add Interval" dialog
    And The user enters the following details in the "Add Interval" dialog:
      | Estimate |
      | 2 hours  |
    And The user clicks the "OK" button in the "Add Interval" dialog
    And The following time intervals are listed in the "Time Intervals" table in the "Edit Timesheet" dialog in the following order:
      | ID | Can Edit | Can Delete | Start    | End      | Case | Title |
      | 1  | true     | true       | 11:00 PM | 11:30 PM | 17   | BugA  |
    And The user searches for the "17" search string by using the search box
    And The following case details are shown in the "View Active Case" page:
      | Estimate: current |
      | 2 hours           |

  Scenario: User can create outside of working hours
    Given The user is logged in as Administrator
    And The following my working schedule exists:
      | Workday starts at           | and ends at                 |
      | "Current time" - 60 minutes | "Current time" - 30 minutes |
    And The following cases exist:
      | Case | Title | Estimate: current | Status | Category | Assigned To   |
      | 17   | BugA  | 2 hours           | Active | Bug      | Administrator |
    And The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "Edit Timesheet" link in the sidebar menu
    And The "Edit Timesheet" dialog is opened
    And The user clicks the "Add Interval" button in the "Edit Timesheet" dialog
    And The "Add Interval" dialog is shown
    When The user enters the following details in the "Add Interval" dialog:
      | Start          | End                        | Case |
      | "Current time" | "Current time" + 5 minutes | 17   |
    And The user clicks the "OK" button in the "Add Interval" dialog
    Then The following time intervals are listed in the "Time Intervals" table in the "Edit Timesheet" dialog in the following order:
      | ID | Can Edit | Can Delete | Start                           | End                             | Case | Title |
      | 1  | true     | true       | "Current time within 5 minutes" | "Current time within 5 minutes" | 17   | BugA  |

  Scenario: Creating overlapping (union) time intervals cause conflict resolution
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title | Estimate: current | Status | Category | Assigned To   |
      | 17   | BugA  | 2 hours           | Active | Bug      | Administrator |
    And The following time intervals exist:
      | ID | Date          | User          | Can Edit | Can Delete | Start    | End      | Case | Title |
      | 1  | "Current Day" | Administrator | true     | true       | 10:00 AM | 10:15 AM | 17   | BugA  |
    And The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "Edit Timesheet" link in the sidebar menu
    And The "Edit Timesheet" dialog is opened
    And The user clicks the "Add Interval" button in the "Edit Timesheet" dialog
    And The "Add Interval" dialog is shown
    When The user enters the following details in the "Add Interval" dialog:
      | Start    | End      | Case |
      | 10:00 AM | 10:30 AM | 17   |
    And The user clicks the "OK" button in the "Add Interval" dialog
    Then The "The changes you have made to the timesheet create overlapping time intervals. FogBugz will automatically resolve the conflict." error message is shown in the "Edit Timesheet" dialog
    And The following time intervals are listed in the "Time Intervals" table in the "Edit Timesheet" dialog in the following order:
      | ID | Can Edit | Can Delete | Start    | End      | Case | Title |
      | 1  | true     | false      | 10:00 AM | 10:15 AM | 17   | BugA  |
      | 2  | true     | true       | 10:00 AM | 10:30 AM | 17   | BugA  |
    And The user clicks the "Save" button in the "" dialog
    And The following time intervals are listed in the "Time Intervals" table in the "Edit Timesheet" dialog in the following order:
      | ID | Can Edit | Can Delete | Start    | End      | Case | Title |
      | 2  | true     | true       | 10:00 AM | 10:30 AM | 17   | BugA  |

  Scenario: Creating overlapping (intersection) time intervals cause conflict resolution
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title | Estimate: current | Status | Category | Assigned To   |
      | 17   | BugA  | 2 hours           | Active | Bug      | Administrator |
    And The following time intervals exist:
      | ID | Date          | User          | Can Edit | Can Delete | Start    | End      | Case | Title |
      | 1  | "Current Day" | Administrator | true     | true       | 10:00 AM | 10:15 AM | 17   | BugA  |
    And The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "Edit Timesheet" link in the sidebar menu
    And The "Edit Timesheet" dialog is opened
    And The user clicks the "Add Interval" button in the "Edit Timesheet" dialog
    And The "Add Interval" dialog is shown
    When The user enters the following details in the "Add Interval" dialog:
      | Start    | End      | Case |
      | 10:07 AM | 10:30 AM | 17   |
    And The user clicks the "OK" button in the "Add Interval" dialog
    Then The "The changes you have made to the timesheet create overlapping time intervals. FogBugz will automatically resolve the conflict." error message is shown in the "Edit Timesheet" dialog
    And The following time intervals are listed in the "Time Intervals" table in the "Edit Timesheet" dialog in the following order:
      | ID | Can Edit | Can Delete | Start    | End      | Case | Title |
      | 1  | true     | false      | 10:00 AM | 10:07 AM | 17   | BugA  |
      | 2  | true     | false      | 10:07 AM | 10:30 AM | 17   | BugA  |

  Scenario: Creating overlapping (relative complement) time intervals cause conflict resolution
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title | Estimate: current | Status | Category | Assigned To   |
      | 17   | BugA  | 2 hours           | Active | Bug      | Administrator |
    And The following time intervals exist:
      | ID | Date          | User          | Can Edit | Can Delete | Start    | End      | Case | Title |
      | 1  | "Current Day" | Administrator | true     | true       | 10:00 AM | 10:15 AM | 17   | BugA  |
    And The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "Edit Timesheet" link in the sidebar menu
    And The "Edit Timesheet" dialog is opened
    And The user clicks the "Add Interval" button in the "Edit Timesheet" dialog
    And The "Add Interval" dialog is shown
    When The user enters the following details in the "Add Interval" dialog:
      | Start   | End      | Case |
      | 9:00 AM | 10:07 AM | 17   |
    And The user clicks the "OK" button in the "Add Interval" dialog
    Then The "The changes you have made to the timesheet create overlapping time intervals. FogBugz will automatically resolve the conflict." error message is shown in the "Edit Timesheet" dialog
    And The following time intervals are listed in the "Time Intervals" table in the "Edit Timesheet" dialog in the following order:
      | ID | Can Edit | Can Delete | Start    | End      | Case | Title |
      | 1  | true     | false      | 10:06 AM | 10:07 AM | 17   | BugA  |
      | 2  | true     | false      | 9:00 AM  | 10:06 AM | 17   | BugA  |

  Scenario: Creating overlapping time intervals cause conflict resolution for different cases
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title | Estimate: current | Status | Category | Assigned To   |
      | 17   | BugA  | 2 hours           | Active | Bug      | Administrator |
      | 18   | BugA  | 2 hours           | Active | Bug      | Administrator |
    And The following time intervals exist:
      | ID | Date          | User          | Can Edit | Can Delete | Start    | End      | Case | Title |
      | 1  | "Current Day" | Administrator | true     | true       | 10:00 AM | 10:15 AM | 17   | BugA  |
    And The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "Edit Timesheet" link in the sidebar menu
    And The "Edit Timesheet" dialog is opened
    And The user clicks the "Add Interval" button in the "Edit Timesheet" dialog
    And The "Add Interval" dialog is shown
    When The user enters the following details in the "Add Interval" dialog:
      | Start   | End      | Case |
      | 9:00 AM | 10:05 AM | 18   |
    And The user clicks the "OK" button in the "Add Interval" dialog
    Then The following time intervals are listed in the "Time Intervals" table in the "Edit Timesheet" dialog in the following order:
      | ID | Can Edit | Can Delete | Start    | End      | Case | Title |
      | 1  | true     | false      | 10:06 AM | 10:15 AM | 17   | BugA  |
      | 2  | true     | false      | 9:00 AM  | 10:05 AM | 18   | BugB  |
