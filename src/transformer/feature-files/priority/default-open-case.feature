@NotAutomated
@JIRA-Key-MANUSCRIPT-29445
@Priority
Feature: Priority - Default - Open Case

  Scenario: Default priority is a default choice when opening a case
    Given The user is logged in as Administrator
    And The priority number "7" is marked as default
    When The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Case" page
    Then The following case details are shown in the "New Case" page:
      | Priority  |
      | Don't Fix |
