@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30620
@CustomField
Feature: Custom field - Mode - Open - Category

  Scenario: Administrator can define category for custom fields when opening cases
    Given The user is logged in as Administrator
    And The following custom fields exist:
      | Name | Description         | Field Location | Data Type | All Projects | All Categories | Project | Category | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | CFL1 | Custom Field left 1 | Top            | Text      | false        | false          | Inbox   | Feature  | Hidden      | Editable  | Editable     | Editable   | Editable    |
    When The user clicks the "New Case" button in the sidebar
    And The user enters the case status details in the "New Case" page:
      | Project | Category |
      | Inbox   | Feature  |
    Then The "CFL1" custom field is visible in the "New Case" page
