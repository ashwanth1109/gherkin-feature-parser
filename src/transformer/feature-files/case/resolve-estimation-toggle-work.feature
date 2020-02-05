@NotAutomated
@JIRA-Key-MANUSCRIPT-30027
@Case
Feature: Case - Resolve - Estimation - Toggle Work

  Scenario: User can start working when resolving a case
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title              | Status | Estimate: current |
      | 17   | New Case to handle | Active | 1 hour            |
    When The user searches for the "17" search string by using the search box
    And The user clicks the "Resolve" button in the "View Active Case" page
    And The user clicks the "Start Work" button in the "Edit Resolved Case" page
    Then The following case details are shown in the "Edit Resolved Case" page:
      | Working On This Case |
      | Administrator        |

  Scenario: User can stop working when resolving a case
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title              | Status | Estimate: current | Working On This Case |
      | 17   | New Case to handle | Active | 1 hour            | Administrator        |
    When The user searches for the "17" search string by using the search box
    And The user clicks the "Resolve" button in the "View Active Case" page
    And The user clicks the "Stop Work" button in the "Edit Resolved Case" page
    Then The following case details are shown in the "Edit Resolved Case" page:
      | Working On This Case |
      |                      |
