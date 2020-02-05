@NotAutomated
@JIRA-Key-MANUSCRIPT-31639
@Case
Feature: Schedule - Start Working on a Favorite Case

  Scenario: User can start working on a favorite case from time tracking menu
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title | Status | Estimate: current |
      | 17   | BugR  | Active | 2 hours           |
    And The following favorite cases exist:
      | Case | User          |
      | 17   | Administrator |
    And The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "17 BugR" menu item in the "Starred" group in the "Change Working To" section in the sidebar menu
    And The user searches for the "17" search string by using the search box
    And The following case details are shown in the "View Active Case" page:
      | Working On This Case |
      | Administrator        |
