@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29092
@Status
Feature: Status - Delete

  Scenario: Administrator can delete an existing active status
    Given The user is logged in as Administrator
    And The following categories exist in the following display order:
      | Category Name | Plural Name | Icon          | Default |
      | Customer      | Customers   | Schedule Item | false   |
    And The following active statuses exist in the following display order:
      | Status Name                | Category | Default | Deleted | Can Delete |
      | Active                     | Customer | true    | false   | true       |
      | Awaiting customer feedback | Customer | false   | false   | true       |
      | Verified                   | Customer | false   | false   | true       |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    And The user clicks the "Customize Statuses" link in the "Statuses" section
    And The "Statuses" page is shown
    When The user clicks the "Delete" button for the "Awaiting customer feedback" active status row in the "Customer" category section
    Then The following active statuses are listed in the following display order:
      | Status Name                | Category | Default | Deleted | Can Delete |
      | Active                     | Customer | true    | false   | true       |
      | Verified                   | Customer | false   | false   | true       |
      | Awaiting customer feedback | Customer | false   | true    | false      |

  Scenario: Administrator can delete an existing resolved status
    Given The user is logged in as Administrator
    And The following categories exist in the following display order:
      | Category Name | Plural Name | Icon          | Default |
      | Customer      | Customers   | Schedule Item | false   |
    And The following resolved statuses exist in the following display order:
      | Status Name                | Category | Default | Deleted | Can Delete |
      | Resolved (Completed)       | Customer | true    | false   | true       |
      | Resolved (Duplicate)       | Customer | false   | false   | true       |
      | Awaiting customer feedback | Customer | false   | false   | true       |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    And The user clicks the "Customize Statuses" link in the "Statuses" section
    And The "Statuses" page is shown
    When The user clicks the "Delete" button for the "Awaiting customer feedback" resolved status row in the "Customer" category section
    Then The following resolved statuses are listed in the following display order:
      | Status Name                | Category | Default | Deleted | Can Delete |
      | Resolved (Completed)       | Customer | true    | false   | true       |
      | Resolved (Duplicate)       | Customer | false   | false   | true       |
      | Awaiting customer feedback | Customer | false   | true    | false      |
