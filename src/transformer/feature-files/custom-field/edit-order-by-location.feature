@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29665
@CustomField
Feature: Custom Field - Edit - Order - By Location

  Scenario: Custom fields cannot be re-ordered across locations
    Given The user is logged in as Administrator
    And The following custom fields exist:
      | Name | Field Location |
      | CFL1 | Top            |
      | CFL2 | Top            |
      | CFL3 | Left           |
      | CFL4 | Left           |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    When The user clicks the "Custom Fields" menu item in the sidebar menu
    Then The "Up" icon is not visible for the "CFL1" custom field row in the "Custom Fields" table in the "Custom Fields" page
    And The "Up" icon is not visible for the "CFL3" custom field row in the "Custom Fields" table in the "Custom Fields" page
    And The "Down" icon is not visible for the "CFL2" custom field row in the "Custom Fields" table in the "Custom Fields" page
    And The "Down" icon is not visible for the "CFL4" custom field row in the "Custom Fields" table in the "Custom Fields" page
