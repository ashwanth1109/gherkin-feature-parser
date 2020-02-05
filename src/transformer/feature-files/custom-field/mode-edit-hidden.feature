@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30609
@CustomField
Feature: Custom field - Mode - Edit - Hidden

  Scenario: Administrator can hide custom fields for editing cases
    Given The user is logged in as Administrator
    And The following custom fields exist:
      | Name | Description         | Field Location | Data Type | All Projects | All Categories | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | CFL3 | Custom Field left 3 | Top            | Text      | true         | true           | Editable    | Hidden    | Editable     | Editable   | Editable    |
    And The following cases exist:
      | ID | Title | Status |
      | 17 | 12345 | Active |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    When The user clicks the "Edit" button in the "View Active Case" page
    Then The "CFL3" custom field is not visible in the "Edit Active Case" page
