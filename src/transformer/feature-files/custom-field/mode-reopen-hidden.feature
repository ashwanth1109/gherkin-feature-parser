@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30612
@CustomField
Feature: Custom field - Mode - Reopen - Hidden

  Scenario: Administrator can hide custom fields for reopening cases
    Given The user is logged in as Administrator
    And The following custom fields exist:
      | Name | Description         | Field Location | Data Type | All Projects | All Categories | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | CFL1 | Custom Field left 1 | Top            | Text      | true         | true           | Editable    | Editable  | Hidden       | Editable   | Editable    |
    And The following cases exist:
      | ID | Title | Status |
      | 17 | 12345 | Closed |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Closed Case" page
    When The user clicks the "Reopen" button in the "View Closed Case" page
    Then The "CFL1" custom field is not visible in the "Edit Resolved Case" page
