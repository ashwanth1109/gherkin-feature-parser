@NotAutomated
@JIRA-Key-MANUSCRIPT-29279
@CustomField
Feature: Custom field - Create - Category Specific

  Scenario: Custom field created for a specific category is visible on a case page when the category it belongs to is selected
    Given The user is logged in as Administrator
    And The following categories exist:
      | Category Name | Plural Name |
      | Ninja         | Ninjas      |
      | Banana        | Bananas     |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Custom Fields" menu item in the sidebar menu
    And The user clicks the "Add New Custom Field" link in the "Custom Fields" page
    When The user enters the custom field details in the "New Custom Field" page:
      | Name              | Description                       | Field Location | Data Type | All Projects | All Categories | Category | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | Customer feedback | The feedback provided by customer | Top            | Text      | true         | false          | Ninja    | Editable    | Editable  | Editable     | Editable   | Hidden      |
    And The user clicks the "OK" button in the "New Custom Field" page
    And The user is redirected to the "Custom Fields" page
    And The user clicks the "New Case" button in the sidebar
    And The user selects the "Ninja" category in the "Category" field in the "New Case" page
    Then The "Customer feedback" custom field is visible in the "New Case" page

  Scenario: Custom field created for a specific category is not visible on a case page when the category it does not belong is selected
    Given The user is logged in as Administrator
    And The following categories exist:
      | Category Name | Plural Name |
      | Ninja         | Ninjas      |
      | Banana        | Bananas     |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Custom Fields" menu item in the sidebar menu
    And The user clicks the "Add New Custom Field" link in the "Custom Fields" page
    When The user enters the custom field details in the "New Custom Field" page:
      | Name              | Description                       | Field Location | Data Type | All Projects | All Categories | Category | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | Customer feedback | The feedback provided by customer | Top            | Text      | true         | false          | Ninja    | Editable    | Editable  | Editable     | Editable   | Hidden      |
    And The user clicks the "OK" button in the "New Custom Field" page
    And The user is redirected to the "Custom Fields" page
    And The user clicks the "New Case" button in the sidebar
    And The user selects the "Banana" category in the "Category" field in the "New Case" page
    Then The "Customer feedback" custom field is not visible in the "New Case" page
