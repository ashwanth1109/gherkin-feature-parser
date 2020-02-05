@NotAutomated
@JIRA-Key-MANUSCRIPT-29664
@CustomField
Feature: Custom Field - Edit - Order

  Scenario Outline: Custom fields can be ordered within Top or Left locations: Move Up
    Given The user is logged in as Administrator
    And The following custom fields exist:
      | Name | Field Location   |
      | CFL1 | <Field Location> |
      | CFL2 | <Field Location> |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    When The user clicks the "Custom Fields" menu item in the sidebar menu
    And The user clicks the "Up" icon of the "CFL2" custom field row in the "Custom Fields" table in the "Custom Fields" page
    Then The following custom fields are listed in the "Custom Fields" page in the following display order:
      | Name | Field Location   |
      | CFL2 | <Field Location> |
      | CFL1 | <Field Location> |
    Examples:
      | Field Location |
      | Left           |
      | Top            |

  Scenario Outline: Custom fields can be ordered within Top or Left locations: Move Down
    Given The user is logged in as Administrator
    And The following custom fields exist:
      | Name | Field Location   |
      | CFL1 | <Field Location> |
      | CFL2 | <Field Location> |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    When The user clicks the "Custom Fields" menu item in the sidebar menu
    And The user clicks the "Down" icon of the "CFL1" custom field row in the "Custom Fields" table in the "Custom Fields" page
    Then The following custom fields are listed in the "Custom Fields" page in the following display order:
      | Name | Field Location   |
      | CFL2 | <Field Location> |
      | CFL1 | <Field Location> |
    Examples:
      | Field Location |
      | Left           |
      | Top            |

