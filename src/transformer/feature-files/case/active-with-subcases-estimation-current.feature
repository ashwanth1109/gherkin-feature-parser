@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30007
@Case
Feature: Case - Active - With Subcases - Estimation - Current

  Scenario: User can see current estimation of an active case with subcases
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title   | Status | Estimate: current | Subcases |
      | 17   | Subc    | Active | 1 hour            |          |
      | 18   | Parentc | Active | 1 hour            | subc     |
    When The user searches for the "18" search string by using the search box
    Then The "View Active Case" page is shown
    And The following case details are shown in the "View Active Case" page:
      | Estimate (incl. subcases) : current |
      | 2 hours                             |
    And The user clicks the "current: 2 hours" link in the "View Active Case" page
    And The "Estimation Details" dialog is opened
    And The following estimation details are shown in the "Estimation Details" dialog:
      | This case | Subcases | Total   |
      | 1 hour    | 1 hour   | 2 hours |
