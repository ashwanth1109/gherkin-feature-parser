@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29294
@CustomField
Feature: Custom field - Mode - Public

  Scenario: Administrator can configure mode of custom fields for creating public cases
    Given The user is logged in as Administrator
    And The following custom fields exist:
      | Name | Description         | Field Location | Data Type | All Projects | All Categories | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | CFL1 | Custom Field left 1 | Top            | Text      | true         | true           | Editable    | Editable  | Editable     | Editable   | Editable    |
      | CFL2 | Custom Field left 2 | Top            | Text      | true         | true           | Editable    | Editable  | Editable     | Editable   | Read-Only   |
    And The user logs out
    And The user is redirected to the "Login" page
    When The user clicks the "New Case" button in the sidebar
    Then The "CFL1" custom field is editable in the "Public New Case" page
    And The "CFL2" custom field is not editable in the "Public New Case" page
