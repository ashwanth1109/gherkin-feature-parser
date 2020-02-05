@NotAutomated
@JIRA-Key-MANUSCRIPT-30025
@Case
Feature: Case - Resolved - Estimation - Toggle Work

  Scenario: User can start working on a resolved case
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title              | Status   | Estimate: current |
      | 17   | New Case to handle | Resolved | 1 hour            |
    When The user searches for the "17" search string by using the search box
    And The user clicks the "Start Work" button in the "View Resolved Case" page
    Then The following case details are shown in the "View Resolved Case" page:
      | Working On This Case |
      | Administrator        |

  Scenario: User can stop working on a resolved case
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title              | Status   | Estimate: current | Working On This Case |
      | 17   | New Case to handle | Resolved | 1 hour            | Administrator        |
    When The user searches for the "17" search string by using the search box
    And The user clicks the "Stop Work" button in the "View Resolved Case" page
    Then The following case details are shown in the "View Resolved Case" page:
      | Working On This Case |
      |                      |
