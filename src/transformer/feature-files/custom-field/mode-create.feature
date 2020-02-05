@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29292
@CustomField
Feature: Custom field - Mode - Create

  Scenario: Administrator can configure mode of custom fields for creating cases
    Given The user is logged in as Administrator
    And The following custom fields exist:
      | Name | Description         | Field Location | Data Type | All Projects | All Categories | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | CFL1 | Custom Field left 1 | Top            | Text      | true         | true           | Editable    | Editable  | Editable     | Editable   | Editable    |
      | CFL2 | Custom Field left 2 | Top            | Text      | true         | true           | Read-Only   | Editable  | Editable     | Editable   | Editable    |
    When The user clicks the "New Case" button in the sidebar
    Then The "CFL1" custom field is editable in the "New Case" page
    And The "CFL2" custom field is not visible in the "New Case" page
