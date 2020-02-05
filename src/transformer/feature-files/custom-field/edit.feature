@JIRA-Key-MANUSCRIPT-29280
@CustomField
Feature: Custom field - Edit

  Scenario: User can edit a custom field
    Given The user is logged in as Administrator
    And The following custom fields exist:
      | Name | Description | Field Location | Data Type | All Projects | All Categories | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | CR1  | TFL1        | Left           | Text      | true         | true           | Editable    | Editable  | Editable     | Editable   | Editable    |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Custom Fields" menu item in the sidebar menu
    And The user clicks the "Edit" button for the "CR1" holiday row in the "Custom Fields" page
    When The user enters the custom field details in the "Edit Custom Field" page:
      | Name | Description | Field Location | Data Type | All Projects | All Categories | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | CR2  | TFL2        | Top            | Text      | true         | true           | Hidden      | Hidden    | Hidden       | Hidden     | Hidden      |
    And The user clicks the "OK" button
    Then The user is redirected to the "Custom Fields" page
    And The following custom fields are listed in the "Custom Fields" page in the following order:
      | Name | Description | Field Location | Data Type | All Projects | All Categories | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | CR2  | TFL2        | Top            | Text      | true         | true           | Hidden      | Hidden    | Hidden       | Hidden     | Hidden      |
