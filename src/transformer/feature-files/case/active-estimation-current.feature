@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29999
@Case
Feature: Case - Active - Estimation - Current

  Scenario: User can see current estimation of an active case
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title              | Status | Estimate: current |
      | 16   | New Case to handle | Active | 123123 hours      |
    When The user searches for the "16" search string by using the search box
    Then The "View Active Case" page is shown
    And The following case details are shown in the "View Active Case" page:
      | Estimate: current |
      | 123123 hours      |
