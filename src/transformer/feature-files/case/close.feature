@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29122
@Case
Feature: Case - Close

  Scenario Outline: User can close a resolved case
    Given The user is logged in as Normal User
    And The following cases exist:
      | ID | Title      | Status   |
      | 16 | First Case | Resolved |
    And The user searches for the "16" search string by using the search box
    And The user is redirected to the "View Resolved Case" page
    When The user clicks the "Close Case" button in the "<Panel Position>" panel in the "View Resolved Case" page
    And The user is redirected to the "Edit Closed Case" page
    And The user clicks the "Close" button in the "Edit Closed Case" page
    Then The user is redirected to the "Iteration Planner" page
    And The user searches for the "16" search string by using the search box
    And The user is redirected to the "View Closed Case" page
    And The following case details are shown in the "View Closed Case" page:
      | Title      | Status |
      | First Case | Closed |
    Examples:
      | Panel Position |
      | top            |
      | bottom         |
