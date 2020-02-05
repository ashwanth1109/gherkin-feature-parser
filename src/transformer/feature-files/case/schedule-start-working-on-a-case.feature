@NotAutomated
@JIRA-Key-MANUSCRIPT-31640
@Case
Feature: Schedule - Start Working on a Case

  Scenario: User can start working on a case from time tracking menu
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title | Status | Estimate: current |
      | 17   | BugR  | Active | 2 hours           |
      | 18   | BugRR | Active | 2 hours           |
    When The user searches for the "17" search string by using the search box
    And The user searches for the "18" search string by using the search box
    And The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "This Case: 18 BugRR" menu item in the "Change Working To" section in the sidebar menu
    And The user searches for the "18" search string by using the search box
    Then The following case details are shown in the "View Active Case" page:
      | Working On This Case |
      | Administrator        |
