@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30367
@Case
Feature: Case - Closed - Estimation - Remaining

  Scenario: User can see remaining estimation of closed case
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title              | Status | Estimate: remaining |
      | 17   | New Case to handle | Closed | 123123 hours        |
    When The user searches for the "17" search string by using the search box
    And The "View Closed Case" page is shown
    Then The following case details are shown in the "View Closed Case" page:
      | Estimate: remaining |
      | 123123 hours        |
