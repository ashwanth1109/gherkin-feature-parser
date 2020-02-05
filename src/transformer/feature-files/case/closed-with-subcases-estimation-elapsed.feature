@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30014
@Case
Feature: Case - Closed - With Subcases - Estimation - remaining

  Scenario: User can see remaining estimation of a closed case with subcases
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title   | Status | Estimate: remaining | Subcases |
      | 17   | Subc    | Closed | 1 hours             |          |
      | 18   | Parentc | Closed | 1 hours             | subc     |
    When The user searches for the "18" search string by using the search box
    And The following case details are shown in the "View Closed Case" page:
      | Estimate (incl. subcases): remaining |
      | 2 hours                              |
