@NotAutomated
@JIRA-Key-MANUSCRIPT-30008
@Case
Feature: Case - Resolve - With Subcases - Estimation - Current

  Scenario: User can see current estimation when resolving a case with subcases
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title              | Status | Estimate: current | Subcases |
      | 17   | New Case to handle | Active | 1 hours           | subc     |
      | 18   | subc               | Active | 1 hours           |          |
    When The user searches for the "17" search string by using the search box
    And The "View Active Case" page is shown
    And The user clicks the "Resolve" button in the "View Active Case" page
    Then The following case details are shown in the "Edit Resolved Case" page:
      | Estimate (incl. subcases): current |
      | 2 hours                            |
    And The user clicks the "current: 2 hours" link in the "Edit Resolved Case" page
    And The "Estimation Details" dialog is opened
    And The following estimation details are shown in the "Estimation Details" dialog:
      | This case | Subcases | Total   |
      | 1 hour    | 1 hour   | 2 hours |
