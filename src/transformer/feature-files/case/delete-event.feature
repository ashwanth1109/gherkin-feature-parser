@NotAutomated
@JIRA-Key-MANUSCRIPT-29184
@Case
Feature: Case - Delete event

  Scenario: User can delete an existing event of a case
    Given The user is logged in as Normal User
    And The following cases exist:
      | ID | Title             | Description           |
      | 16 | Superman identity | Nobody will ever know |
    And The user searches for the "16" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button in the "View Active Case" page
    And The user is redirected to the "Edit Active Case" page
    When The user clicks the "Delete" button for the "Opened By" event in the "Edit Active Case" page
    And The "Delete Case Event" confirmation dialog is opened
    And The user clicks the "Permanently Delete" button in the "Delete Case Event" confirmation dialog
    Then The following case events are listed in the "View Active Case" page in the following order:
      | Type        |
      | Assigned To |
      | Removed By  |
