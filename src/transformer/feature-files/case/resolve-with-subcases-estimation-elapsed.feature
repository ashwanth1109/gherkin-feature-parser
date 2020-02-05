@NotAutomated
@JIRA-Key-MANUSCRIPT-30012
@Case
Feature: Case - Resolve - With Subcases - Estimation - Elapsed

  Scenario: User can see elapsed estimation when resolving a case with subcases
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title              | Status | Estimate: elapsed | Subcases |
      | 17   | New Case to handle | Active | 1 hours           | subc     |
      | 18   | subc               | Active | 1 hours           |          |
    When The user searches for the "17" search string by using the search box
    And The "View Active Case" page is shown
    And The user clicks the "Resolve" button in the "View Active Case" page
    Then The following case details are shown in the "Edit Resolved Case" page:
      | Estimate (incl. subcases): elapsed |
      | 2 hours                            |
