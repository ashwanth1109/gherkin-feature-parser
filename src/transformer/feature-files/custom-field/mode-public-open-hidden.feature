@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30607
@CustomField
Feature: Custom field - Mode - Public - Open - Hidden

  Scenario: Administrator can hide custom fields for public cases
    Given The user is logged in as Administrator
    And The following custom fields exist:
      | Name | Description         | Field Location | Data Type | All Projects | All Categories | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | CFL3 | Custom Field left 3 | Top            | Text      | true         | true           | Editable    | Editable  | Editable     | Editable   | Hidden      |
    And The user logs out
    And The user is redirected to the "Log in" page
    When The user clicks the "New Case" button in the sidebar
    Then The "CFL3" custom field is not visible in the "Public New Case" page
