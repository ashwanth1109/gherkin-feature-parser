@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30613
@CustomField
Feature: Custom field - Mode - Resolve - Hidden

  Scenario: Administrator can hide custom fields for resolving cases
    Given The user is logged in as Administrator
    And The following custom fields exist:
      | Name | Description         | Field Location | Data Type | All Projects | All Categories | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | CFL3 | Custom Field left 3 | Top            | Text      | true         | true           | Editable    | Editable  | Hidden       | Editable   | Editable    |
    And The following cases exist:
      | ID | Title | Status |
      | 17 | 12345 | Active |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    When The user clicks the "Resolve" button in the "View Active Case" page
    And The user is redirected to the "Edit Resolved Case" page
    Then The "CFL3" custom field is not visible in the "Edit Resolved Case" page

