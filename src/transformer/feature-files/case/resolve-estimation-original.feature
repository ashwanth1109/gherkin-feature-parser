@NotAutomated
@JIRA-Key-MANUSCRIPT-30016
@Case
Feature: Case - Resolve - Estimation - Original

  Scenario: User can see original estimation when resolving a case
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title              | Status | Estimate: original |
      | 16   | New Case to handle | Active | 123123 hours       |
    When The user searches for the "16" search string by using the search box
    And The "View Active Case" page is shown
    And The user clicks the "Resolve" button in the "View Active Case" page
    Then The following case details are shown in the "Edit Resolved Case" page:
      | Estimate: original |
      | 123123 hours       |
