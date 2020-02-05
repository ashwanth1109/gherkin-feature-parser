@NotAutomated
@JIRA-Key-MANUSCRIPT-30365
@Case
Feature: Case - Resolve - Estimation - Remaining

  Scenario: User can see remaining estimation when resolving a case
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title              | Status | Estimate: remaining |
      | 17   | New Case to handle | Active | 123123 hours        |
    When The user searches for the "17" search string by using the search box
    And The "View Active Case" page is shown
    And The user clicks the "Resolve" button in the "View Active Case" page
    Then The following case details are shown in the "Edit Resolved Case" page:
      | Estimate: remaining |
      | 123123 hours        |
