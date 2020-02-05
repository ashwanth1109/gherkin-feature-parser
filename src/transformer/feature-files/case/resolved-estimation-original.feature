@NotAutomated
@JIRA-Key-MANUSCRIPT-30017
@Case
Feature: Case - Resolved - Estimation - Original

  Scenario: User can see original estimation of a resolved case
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title              | Status   | Estimate: original |
      | 16   | New Case to handle | Resolved | 123123 hours       |
    When The user searches for the "16" search string by using the search box
    And The "View Resolved Case" page is shown
    Then The following case details are shown in the "View Resolved Case" page:
      | Estimate: original |
      | 123123 hours       |
