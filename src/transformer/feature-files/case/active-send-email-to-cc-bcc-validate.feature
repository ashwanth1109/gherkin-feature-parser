@NotAutomated
@JIRA-Key-MANUSCRIPT-30629
@Case
Feature: Case - Active - Send Email - TO CC BCC - Validate

  Scenario Outline: Field "<Field>" is validated when sending emails from cases
    Given The user is logged in as Administrator
    And The user clicks the "New Email" button in the sidebar
    And The following cases exist:
      | ID | Title | Status |
      | 17 | 12345 | Active |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Mail" button in the top panel in the "View Active Case" page
    When The user enters the following email details in the "Edit Active Case" page:
      | <Field> |
      | a       |
    And The user clicks the "<Button>" button in the "Edit Active Case" page
    Then The "Invalid email address" error message is shown in the "Edit Active Case" page
    Examples:
      | Field | Button       |
      | To    | Send         |
      | CC    | Send         |
      | BCC   | Send         |
      | To    | Send & Close |
      | CC    | Send & Close |
      | BCC   | Send & Close |
