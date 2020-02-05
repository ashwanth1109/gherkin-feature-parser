@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30618
@CustomField
Feature: Custom field - Mode - Reopen - Category

  Scenario: Administrator can configure category for custom fields when reopening cases
    Given The user is logged in as Administrator
    And The following custom fields exist:
      | Name | Description         | Field Location | Data Type | All Projects | All Categories | Project | Category | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | CFL1 | Custom Field left 1 | Top            | Text      | false        | false          | Inbox   | Feature  | Editable    | Editable  | Editable     | Editable   | Editable    |
    And The following cases exist:
      | ID | Title | Status | Project | Category |
      | 17 | 12345 | Closed | Inbox   | Feature  |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Closed Case" page
    When The user clicks the "Reopen" button in the "View Closed Case" page
    Then The "CFL1" custom field is editable in the "Edit Resolved Case" page
