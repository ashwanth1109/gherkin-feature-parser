@NotAutomated
@JIRA-Key-MANUSCRIPT-29233
@CustomField
Feature: Custom field - Create - Duplicate Names

  Scenario: Administrator can not create a custom field with a name of already existing custom field
    Given The user is logged in as Administrator
    And The following custom fields exist:
      | Name | Description                       | Field Location | Data Type | All Projects | All Categories | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | CCC  | The feedback provided by customer | Top            | Text      | true         | true           | Read-only   | Editable  | Editable     | Editable   | Hidden      |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Custom Fields" menu item in the sidebar menu
    And The user clicks the "Add New Custom Field" link in the "Custom Fields" page
    When The user enters the custom field details in the "New Custom Field" page:
      | Name | Description             | Field Location | Data Type | All Projects | All Categories | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | CCC  | Duplicated Custom Field | Top            | Text      | true         | true           | Read-only   | Editable  | Editable     | Editable   | Hidden      |
    And The user clicks the "OK" button in the "New Custom Field" page
    Then The "Name" field is highlighted as an error in the "New Custom Field" page
    And The "Name" field has the "Name already exists" error message in the "New Custom Field" page
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Custom Fields" menu item in the sidebar menu
    And The following custom fields are listed in the "Custom Fields" page:
      | Name | Description                       | Field Location | Data Type | All Projects | All Categories | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | CCC  | The feedback provided by customer | Top            | Text      | true         | true           | Read-only   | Editable  | Editable     | Editable   | Hidden      |
