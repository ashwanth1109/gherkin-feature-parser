@NotAutomated
@JIRA-Key-MANUSCRIPT-31633
@Case
Feature: Case - Active - Estimation - Elapsed - Day by day breakdown

  Scenario: User can see day by day breakdown of the elapsed time of the case
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title      | Status | Estimate: elapsed |
      | 17   | White room | Active | 123123 hours      |
    And The following time intervals exist:
      | ID | Date              | User          | Can Edit | Can Delete | Start                       | End                        | Case | Title |
      | 1  | "Current Day - 1" | Administrator | true     | true       | 9:00 AM                     | 9:30 AM                    | 17   | BugA  |
      | 2  | "Current Day - 2" | Administrator | true     | true       | 9:00 AM                     | 9:30 AM                    | 17   | BugA  |
      | 3  | "Current Day"     | Administrator | true     | true       | "Current time" - 15 minutes | "Current time" - 5 minutes | 17   | BugA  |
    When The user searches for the "17" search string by using the search box
    And The "View Active Case" page is shown
    And The user clicks the "Estimate: elapsed" link in the "View Active Case" page
    Then The "Elapsed time breakdown" dialog is shown
    And The following details are shown for the "DayOfWeek Current Day - 2" section in the "Elapsed time breakdown" dialog:
      | Start   | End     | Name          |
      | 9:00 AM | 9:30 AM | Administrator |
    And The following details are shown for the "DayOfWeek Current Day - 1 (Yesterday)" section in the "Elapsed time breakdown" dialog:
      | Start   | End     | Name          |
      | 9:00 AM | 9:30 AM | Administrator |
    And The following details are shown for the "DayOfWeek Current Day - 1 (Today)" section in the "Elapsed time breakdown" dialog:
      | Start                       | End                        | Name          |
      | "Current time" - 15 minutes | "Current time" - 5 minutes | Administrator |
