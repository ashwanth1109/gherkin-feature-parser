@NotAutomated
@JIRA-Key-MANUSCRIPT-31638
@Case
Feature: Schedule - Switch to work on another case

  Scenario: User can switch to work on another case from case page
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title | Status | Estimate: current |
      | 17   | BugR  | Active | 2 hours           |
      | 18   | BugR2 | Active | 2 hours           |
    When The user searches for the "18" search string by using the search box
    And The user clicks the "Start Work" button in the "View Active Case" page
    Then The following case details are shown in the "View Active Case" page:
      | Working On This Case |
      | Administrator        |
    And The user searches for the "17" search string by using the search box
    And The following case details are shown in the "View Active Case" page:
      | Working On This Case |
      |                      |

  Scenario: User can switch working on a case from time tracking menu
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title | Status | Estimate: current | Working On This Case |
      | 17   | BugR  | Active | 2 hours           | Administrator        |
      | 18   | BugRR | Active | 2 hours           |                      |
    When The user searches for the "17" search string by using the search box
    And The user searches for the "18" search string by using the search box
    And The user hovers over the "Time Tracking" menu item in the sidebar
    And The user clicks the "This Case: 18 BugRR" menu item in the "Change Working To" section in the sidebar menu
    And The user searches for the "18" search string by using the search box
    Then The following case details are shown in the "View Active Case" page:
      | Working On This Case |
      | Administrator        |
    And The user searches for the "18" search string by using the search box
    And The following case details are shown in the "View Active Case" page:
      | Working On This Case |
      |                      |


