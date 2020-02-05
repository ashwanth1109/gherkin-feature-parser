@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30011
@Case
Feature: Case - Active - With Subcases - Estimation - Elapsed

  Scenario: User can see elapsed estimation of an active case with subcases
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title   | Status | Estimate: elapsed | Subcases |
      | 17   | Subc    | Active | 1 hour            |          |
      | 18   | Parentc | Active | 1 hour            | subc     |
    When The user searches for the "18" search string by using the search box
    Then The "View Active Case" page is shown
    And The following case details are shown in the "View Active Case" page:
      | Estimate (incl. subcases) : elapsed |
      | 2 hours                             |
