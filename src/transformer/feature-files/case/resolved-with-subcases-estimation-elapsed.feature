@NotAutomated
@JIRA-Key-MANUSCRIPT-30013
@Case
Feature: Case - Resolved - With Subcases - Estimation - Elapsed

  Scenario: User can see elapsed estimation of a resolved case with subcases
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title   | Status   | Estimate: elapsed | Subcases |
      | 17   | Subc    | Resolved | 1 hours           |          |
      | 18   | Parentc | Resolved | 1 hours           | subc     |
    When The user searches for the "18" search string by using the search box
    Then The following case details are shown in the "View Resolved Case" page:
      | Estimate (incl. subcases): elapsed |
      | 2 hours                            |
