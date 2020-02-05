@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29067
@Status
Feature: Status - Edit

  Background:
    Given The user is logged in as Administrator
    And The following categories exist in the following display order:
      | Category Name | Plural Name | Icon          | Default |
      | Customer      | Customers   | Schedule Item | false   |

  Scenario: Administrator can edit an existing active status
    Given The following active statuses exist in the following display order:
      | Status Name                | Category | Default |
      | Awaiting customer feedback | Customer | false   |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    And The user clicks the "Customize Statuses" link in the "Statuses" section
    And The "Statuses" page is shown
    And The user clicks the "Edit" button for the "Awaiting customer feedback" active status row in the "Active Statuses" table in the "Customer" category section in the "Statuses" page
    And The "Edit" dialog is opened
    When The user enters the active status details in the "Edit Active Status" dialog:
      | Status Name       |
      | Awaiting customer |
    And The user clicks the "OK" button in the "Edit Active Status" dialog
    Then The "Edit" dialog is closed
    And The following active statuses are listed in the "Active Statuses" table in the "Customer" category section in the "Statuses" page in the following display order:
      | Can Edit | Status Name                | Description                     | Deleted | Can Delete |
      | true     | Active                     | Default status for active cases | false   | true       |
      | true     | Awaiting customer feedback |                                 | false   | true       |

  Scenario: Administrator can edit an existing resolved status
    Given The following resolved statuses exist in the following display order:
      | Status Name           | Category | Default | Postpone | Work Done |
      | Cancelled by customer | Customer | false   | false    | false     |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    And The user clicks the "Customize Statuses" link in the "Statuses" section
    And The "Statuses" page is shown
    And The user clicks the "Edit" button for the "Cancelled by customer" resolved status row in the "Resolved Statuses" table in the "Customer" category section in the "Statuses" page
    And The "Edit" dialog is opened
    When The user enters the resolved status details in the "Edit Resolved Status" dialog:
      | Status Name     |
      | Cancelled order |
    And The user clicks the "OK" button in the "Edit Resolved Status" dialog
    Then The "Edit" dialog is closed
    And The following resolved statuses are listed in the "Resolved Statuses" table in the "Customer" category section in the "Statuses" page in the following display order:
      | Can Edit | Status Name          | Description                                                                      | Deleted | Can Delete |
      | true     | Resolved (Completed) | Default status for resolved cases,\nUsed for calculating estimate history in EBS | false   | true       |
      | true     | Resolved (Duplicate) | Duplicate case status                                                            | false   | true       |
      | true     | Cancelled order      |                                                                                  | false   | true       |
