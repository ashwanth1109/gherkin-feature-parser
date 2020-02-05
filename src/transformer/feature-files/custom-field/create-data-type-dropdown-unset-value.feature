@NotAutomated
@JIRA-Key-MANUSCRIPT-29663
@CustomField
Feature: Custom Field - Create - Data Type - Dropdown - Unset Value

  Scenario: User can use an "Unset" static value for dropdown custom fields
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Custom Fields" menu item in the sidebar menu
    And The user clicks the "Add New Custom Fields" link in the "Custom Fields" page
    When The user enters the custom field details in the "New Custom Field" page:
      | Name | Description                       | Field Location | Data Type | Possible Values   | All Projects | All Categories | Category | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | CFL1 | The feedback provided by customer | Top            | Dropdown  | 1\n--\n\2 two\n3f | true         | false          | Ninja    | Editable    | Editable  | Editable     | Editable   | Hidden      |
    And The user clicks the "OK" button in the "New Custom Field" page
    And The user is redirected to the "Custom Fields" page
    And The user clicks the "New Case" button in the sidebar
    Then The "Customer feedback" custom field is visible in the "New Case" page
    And The following values are available for the "CFL1" custom field in the "New Case" page in the following display order:
      | 1     |
      | --    |
      | 2 two |
      | 2f    |
    And The following case details are shown in the "New Case" page:
      | CFL1 |
      | --   |
