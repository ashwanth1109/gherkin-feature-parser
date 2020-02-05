@NotAutomated
@JIRA-Key-MANUSCRIPT-29119
@Case
Feature: Case - Resolve

  Scenario Outline: User can resolve a case
    Given The user is logged in as Normal User
    And The following cases exist:
      | ID | Title      | Status |
      | 16 | First Case | Active |
    And The user searches for the "16" search string by using the search box
    And The user is redirected to the "View Active Case" page
    When The user clicks the "Resolve" button in the <Panel Position> panel in the "View Active Case" page
    And The user is redirected to the "Edit Resolved Case" page
    And The user clicks the "Resolve" button in the "Edit Resolved Case" page
    Then The user is redirected to the "View Resolved Case" page
    And The following case details are shown in the "View Resolved Case" page:
      | Title      | Status           |
      | First Case | Resolved (Fixed) |
    Examples:
      | Panel Position |
      | top            |
      | bottom         |
