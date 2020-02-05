@NotAutomated
@JIRA-Key-MANUSCRIPT-29121
@Case
Feature: Case - Reactivate resolved case

  Scenario Outline: User can reactivate a resolved case
    Given The user is logged in as Normal User
    And The following cases exist:
      | ID | Title      | Status   |
      | 16 | First Case | Resolved |
    And The user searches for the "16" search string by using the search box
    And The user is redirected to the "View Resolved Case" page
    When The user clicks the "Reactivate" button in the <Panel Position> panel in the "View Resolved Case" page
    And The user is redirected to the "Edit Active Case" page
    And The user clicks the "Reactivate" button in the "Edit Active Case" page
    Then The user is redirected to the "View Active Case" page
    And The following case details are shown in the "View Active Case" page:
      | Title      | Status |
      | First Case | Active |
    Examples:
      | Panel Position |
      | top            |
      | bottom         |
