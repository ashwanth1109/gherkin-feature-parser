@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30010
@Case
Feature: Case - Closed - With Subcases - Estimation - Current

  Scenario: User can see current estimation of a closed case with subcases
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title   | Status | Estimate: current | Subcases |
      | 17   | Subc    | Closed | 1 hours           |          |
      | 18   | Parentc | Closed | 1 hours           | subc     |
    When The user searches for the "18" search string by using the search box
    And The following case details are shown in the "View Closed Case" page:
      | Estimate (incl. subcases): current |
      | 2 hours                            |
    And The user clicks the "current: 2 hours" link in the "View Closed Case" page
    And The "Estimation Details" dialog is opened
    And The following estimation details are shown in the "Estimation Details" dialog:
      | This case | Subcases | Total   |
      | 1 hour    | 1 hour   | 2 hours |
