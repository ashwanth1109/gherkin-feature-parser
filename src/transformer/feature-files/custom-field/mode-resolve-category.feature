@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30619
@CustomField
Feature: Custom field - Mode - Resolve - Category

  Scenario: Administrator can define category of custom fields for resolving cases
    Given The user is logged in as Administrator
    And The following custom fields exist:
      | Name | Description         | Field Location | Data Type | All Projects | All Categories | Project | Category | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | CFL1 | Custom Field left 1 | Top            | Text      | false        | false          | Inbox   | Feature  | Editable    | Editable  | Editable     | Editable   | Editable    |
    And The following cases exist:
      | ID | Title | Status | Project | Category |
      | 17 | 12345 | Active | Inbox   | Feature  |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    When The user clicks the "Resolve" button in the "View Active Case" page
    And The user is redirected to the "Edit Resolved Case" page
    Then The "CFL1" custom field is visible in the "Edit Resolved Case" page