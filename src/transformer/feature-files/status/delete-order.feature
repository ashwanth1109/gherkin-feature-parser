@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29438
@Status
Feature: Status - Delete - Order

  Scenario: Administrator cannot reorder a deleted active status
    Given The user is logged in as Administrator
    And The following categories exist in the following display order:
      | Category Name | Plural Name | Icon          | Default |
      | Customer      | Customers   | Schedule Item | false   |
    And The following active statuses exist in the following display order:
      | Status Name                | Category | Display Order: Bottom | Display Order: Top | Default | Deleted | Can Delete |
      | Active                     | Customer | true                  | false              | true    | false   | true       |
      | Verified                   | Customer | true                  | true               | false   | false   | true       |
      | Awaiting customer feedback | Customer | false                 | true               | false   | false   | true       |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    And The user clicks the "Customize Statuses" link in the "Statuses" section
    And The "Statuses" page is shown
    When The user clicks the "Delete" button for the "Verified" active status row in the "Customer" category section
    Then The following active statuses are listed in the following display order:
      | Status Name                | Category | Display Order: Bottom | Display Order: Top | Default | Deleted | Can Delete |
      | Active                     | Customer | true                  | false              | true    | false   | true       |
      | Awaiting customer feedback | Customer | false                 | true               | false   | false   | true       |
      | Verified                   | Customer | false                 | false              | false   | true    | false      |

  Scenario: Administrator cannot reorder a deleted resolved status
    Given The user is logged in as Administrator
    And The following categories exist in the following display order:
      | Category Name | Plural Name | Icon          | Default |
      | Customer      | Customers   | Schedule Item | false   |
    And The following resolved statuses exist in the following display order:
      | Status Name                | Category | Display Order: Bottom | Display Order: Top | Default | Deleted | Can Delete |
      | Resolved (Completed)       | Customer | true                  | false              | true    | false   | true       |
      | Resolved (Duplicate)       | Customer | true                  | false              | true    | false   | true       |
      | Verified                   | Customer | true                  | true               | false   | false   | true       |
      | Awaiting customer feedback | Customer | false                 | true               | false   | false   | true       |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    And The user clicks the "Customize Statuses" link in the "Statuses" section
    And The "Statuses" page is shown
    When The user clicks the "Delete" button for the "Verified" resolved status row in the "Customer" category section
    Then The following resolved statuses are listed in the following display order:
      | Status Name                | Category | Display Order: Bottom | Display Order: Top | Default | Deleted | Can Delete |
      | Resolved (Completed)       | Customer | true                  | false              | true    | false   | true       |
      | Resolved (Duplicate)       | Customer | true                  | false              | true    | false   | true       |
      | Awaiting customer feedback | Customer | false                 | true               | false   | false   | true       |
      | Verified                   | Customer | false                 | false              | false   | true    | false      |

