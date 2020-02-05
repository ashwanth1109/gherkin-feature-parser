@NotAutomated
@JIRA-Key-MANUSCRIPT-31644
@Case
Feature: Schedule - Stop working on a case

  Scenario: User can stop working on a case from time tracking menu
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title | Status | Working On This Case | Estimate: current |
      | 17   | BugR  | Active | Administrator        | 2 hours           |
    When The user hovers over the "Case 17" menu item in the sidebar
    And The user clicks the "Nothing" menu item in the "Change Working To" section in the sidebar menu
    And The user searches for the "17" search string by using the search box
    Then The following case details are shown in the "View Active Case" page:
      | Working On This Case |
      |                      |
