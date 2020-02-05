@NotAutomated
@JIRA-Key-MANUSCRIPT-30366
@Case
Feature: Case - Resolved - Estimation - Remaining

  Scenario: User can see remaining estimation of a resolved case
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title              | Status   | Estimate: remaining |
      | 17   | New Case to handle | Resolved | 123123 hours        |
    When The user searches for the "17" search string by using the search box
    And The "View Resolved Case" page is shown
    Then The following case details are shown in the "View Resolved Case" page:
      | Estimate: remaining |
      | 123123 hours        |
