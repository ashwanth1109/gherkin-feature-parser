@NotAutomated
@JIRA-Key-MANUSCRIPT-30371
@Case
Feature: Case - Closed - With Subcases - Estimation - Remaining

  Scenario: User can see elapsed estimation of a closed case with subcases
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title   | Status | Estimate: original | Estimation: elapsed | Estimate: remaining | Subcases |
      | 17   | Subc    | Active | 4 hours            | 3 hours             | 1 hour              |          |
      | 18   | Parentc | Active | 4 hours            | 3 hours             | 1 hour              | subc     |
    When The user searches for the "18" search string by using the search box
    And The following case details are shown in the "View Closed Case" page:
      | Estimate (incl. subcases): elapsed |
      | 2 hours                            |
    And The user clicks the "remaining: 2 hours" link in the "View Closed Case" page
    And The "Estimation Details" dialog is opened
    And The following estimation details are shown for the "This Case" row in the "Estimation Details" dialog:
      | Estimate (current) | Time Elapsed | Time Remaining |
      | 4 hours            | 3 hours      | 1 hour         |
    And The following estimation details are shown for the "Subcases" row in the "Estimation Details" dialog:
      | Estimate (current) | Time Elapsed | Time Remaining |
      | 4 hours            | 3 hours      | 1 hour         |
    And The following estimation details are shown for the "Total" row in the "Estimation Details" dialog:
      | Estimate (current) | Time Elapsed | Time Remaining |
      | 8 hours            | 6 hours      | 2 hours        |