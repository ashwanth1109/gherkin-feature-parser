@JIRA-Key-MANUSCRIPT-28872
@CustomField
Feature: Custom field - Create - For all projects and all categories

  Scenario: Administrator can create a new custom field
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Custom Fields" menu item in the sidebar menu
    And The user clicks the "Add New Custom Field" link in the "Custom Fields" page
    When The user enters the custom field details in the "New Custom Field" page:
      | Name              | Description                       | Field Location | Data Type | All Projects | All Categories | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | Customer feedback | The feedback provided by customer | Top            | Text      | true         | true           | Read-Only   | Editable  | Editable     | Editable   | Hidden      |
    And The user clicks the "OK" button
    Then The user is redirected to the "Custom Fields" page
    # NOTE: Check the visible property values of the created custom field as a part of the below step definition: Field Name, Data Type, Description, Location!
    And The created custom field is listed in the "Custom Fields" table
