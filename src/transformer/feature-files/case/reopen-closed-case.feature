@NotAutomated
@JIRA-Key-MANUSCRIPT-29123
@Case
Feature: Case - Reopen closed case

  Scenario Outline: User can reopen a closed case
    Given The user is logged in as Normal User
    And The following cases exist:
      | ID | Title      | Status |
      | 16 | First Case | Closed |
    And The user searches for the "16" search string by using the search box
    And The user is redirected to the "View Closed Case" page
    When The user clicks the "Reopen" button in the <Panel Position> panel in the "View Closed Case" page
    And The user is redirected to the "Edit Active Case" page
    And The user clicks the "Reopen" button in the "Edit Active Case" page
    Then The user is redirected to the "View Active Case" page
    And The following case details are shown in the "View Active Case" page:
      | Title      | Status |
      | First Case | Active |
    Examples:
      | Panel Position |
      | top            |
      | bottom         |
