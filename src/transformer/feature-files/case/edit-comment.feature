@NotAutomated
@JIRA-Key-MANUSCRIPT-29125
@Case
Feature: Case - Edit comment

  Scenario: User can edit an existing comment for a case
    Given The user is logged in as Normal User
    And The following cases exist:
      | ID | Title             | Description           |
      | 16 | Superman identity | Nobody will ever know |
    And The user searches for the "16" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button for the "Opened By" event in the "View Active Case" page
    And The "Editing Event" form is shown for the "Opened By" event in the "View Active Case" page
    When The user enters the event details in the "Editing Event" form for the "Opened By" event in the "View Active Case" page:
      | Content           |
      | Yet another value |
    And The user clicks the "Save" button in the "Editing Event" form for the "Opened By" event in the "View Active Case" page
    Then The "Editing Event" form is not shown for the "Opened By" event in the "View Active Case" page
    And The following case events are listed in the "View Active Case" page in the following order:
      | Type      | Content           |
      | Opened By | Yet another value |
