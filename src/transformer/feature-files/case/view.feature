@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29116
@Case
Feature: Case - View

  Scenario: User can view an existing case
    Given The user is logged in as Normal User
    And The following cases exist:
      | ID | Title      |
      | 17 | First Case |
    When The user searches for the "17" search string by using the search box
    Then The user is redirected to the "View Active Case" page
    And The following case details are shown in the "View Active Case" page:
      | ID | Title      |
      | 17 | First Case |
