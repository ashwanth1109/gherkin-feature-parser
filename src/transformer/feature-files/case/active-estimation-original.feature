@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30015
@Case
Feature: Case - Active - Estimation - Original

  Scenario: User can see original estimation of active case
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title              | Status | Estimate: original |
      | 16   | New Case to handle | Active | 123123 hours       |
    When The user searches for the "16" search string by using the search box
    And The "View Active Case" page is shown
    Then The following case details are shown in the "View Active Case" page:
      | Estimate: original |
      | 123123 hours       |
