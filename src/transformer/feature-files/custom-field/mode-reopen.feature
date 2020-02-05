@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30606
@CustomField
Feature: Custom field - Mode - Reopen

  Scenario: Administrator can configure mode for for reopening cases
    Given The user is logged in as Administrator
    And The following custom fields exist:
      | Name | Description         | Field Location | Data Type | All Projects | All Categories | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | CFL1 | Custom Field left 1 | Top            | Text      | true         | true           | Editable    | Editable  | Editable     | Editable   | Editable    |
      | CFL2 | Custom Field left 1 | Top            | Text      | true         | true           | Editable    | Editable  | Read-Only    | Editable   | Editable    |
    And The following cases exist:
      | ID | Title | Status | CFL2  |
      | 17 | 12345 | Closed | Ninja |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Closed Case" page
    When The user clicks the "Reopen" button in the "View Closed Case" page
    Then The "CFL1" custom field is editable in the "Edit Resolved Case" page
    And The "CFL2" custom field is not editable in the "Edit Resolved Case" page
    And The "CFL2" custom field has the "Ninja" value in the "Edit Resolved Case" page
