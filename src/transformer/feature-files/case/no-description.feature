@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29452
@Case
Feature: Case - No Description

  Scenario: User can create a case without description
    Given The user is logged in as Normal User
    And The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Case" page
    And The user enters the case details in the "New Case" page:
      | Title             |
      | Superman identity |
    When The user clicks the "Open" button in the "New Case" page
    Then The user is redirected to the "View Active Case" page
    And The following case events are listed in the "View Active Case" page in the following order:
      | Type      | Content |
      | Opened By |         |
    And The user cannot click the "Edit" button for the "Opened By" event in the "View Active Case" page
