@JIRA-Key-MANUSCRIPT-28889
@CustomField
Feature: Custom field - Delete

  Scenario: Administrator can delete a custom field
    Given The user is logged in as Administrator
    And The following custom fields exist:
      | Name                     | Description         | Field Location | Data Type | All Projects | All Categories | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | Customer feedback left 1 | The feedback left 1 | Left           | Text      | true         | true           | Read-Only   | Editable  | Editable     | Editable   | Hidden      |
      | Customer feedback left 2 | The feedback left 2 | Left           | Text      | true         | true           | Read-Only   | Editable  | Editable     | Editable   | Hidden      |
      | Customer feedback left 3 | The feedback left 3 | Left           | Text      | true         | true           | Read-Only   | Editable  | Editable     | Editable   | Hidden      |
      | Customer feedback top 1  | The feedback top 1  | Top            | Text      | true         | true           | Read-Only   | Editable  | Editable     | Editable   | Hidden      |
      | Customer feedback top 2  | The feedback top 2  | Top            | Text      | true         | true           | Read-Only   | Editable  | Editable     | Editable   | Hidden      |
      | Customer feedback top 3  | The feedback top 3  | Top            | Text      | true         | true           | Read-Only   | Editable  | Editable     | Editable   | Hidden      |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Custom Fields" menu item in the sidebar menu
    When The user clicks the "Delete" button for the "Customer feedback left 1" custom field row
    And The confirmation dialog is opened
    And The user clicks the "OK" button in the confirmation dialog
    Then The confirmation dialog is closed
    And The deleted custom field is not listed in the "Custom Fields" page
    # NOTE: Check the visible property values of the custom fields as a part of the below step definition: Field Name, Data Type, Description, Location!
    And The following custom fields are listed in the "Custom Fields" page in the following order:
      | Name                     | Description         | Field Location | Data Type | All Projects | All Categories | Create Mode | Edit Mode | Resolve Mode | Close Mode | Public Mode |
      | Customer feedback top 1  | The feedback top 1  | Top            | Text      | true         | true           | Read-Only   | Editable  | Editable     | Editable   | Hidden      |
      | Customer feedback top 2  | The feedback top 2  | Top            | Text      | true         | true           | Read-Only   | Editable  | Editable     | Editable   | Hidden      |
      | Customer feedback top 3  | The feedback top 3  | Top            | Text      | true         | true           | Read-Only   | Editable  | Editable     | Editable   | Hidden      |
      | Customer feedback left 2 | The feedback left 2 | Left           | Text      | true         | true           | Read-Only   | Editable  | Editable     | Editable   | Hidden      |
      | Customer feedback left 3 | The feedback left 3 | Left           | Text      | true         | true           | Read-Only   | Editable  | Editable     | Editable   | Hidden      |
