@NotAutomated
@JIRA-Key-MANUSCRIPT-30021
@Case
Feature: Case - Resolved - With Subcases - Estimation - Original

  Scenario: User can see original estimation of a resolved case with subcases
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title   | Status   | Estimate: original | Subcases |
      | 17   | Subc    | Resolved | 1 hours            |          |
      | 18   | Parentc | Resolved | 1 hours            | subc     |
    When The user searches for the "18" search string by using the search box
    Then The following case details are shown in the "View Resolved Case" page:
      | Estimate (incl. subcases): original |
      | 2 hours                             |
    And The user clicks the "original: 2 hours" link in the "View Resolved Case" page
    And The "Estimation Details" dialog is opened
    And The following estimation details are shown in the "Estimation Details" dialog:
      | This case | Subcases | Total   |
      | 1 hour    | 1 hour   | 2 hours |