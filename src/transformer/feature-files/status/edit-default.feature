@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30041
@Status
Feature: Status - Edit - Default

  Background:
    Given The user is logged in as Administrator
    And The following categories exist in the following display order:
      | Category Name | Plural Name | Icon          | Default |
      | Customer      | Customers   | Schedule Item | false   |

  Scenario: Administrator can edit an existing active status: "Default": "true" to "false"
    And The following active statuses exist in the following display order:
      | Status Name                | Category | Default |
      | Awaiting implementor       | Customer | false   |
      | Awaiting customer feedback | Customer | true    |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    And The user clicks the "Customize Statuses" link in the "Statuses" section
    And The "Statuses" page is shown
    And The user clicks the "Edit" button for the "Awaiting customer feedback" active status row in the "Active Statuses" table in the "Customer" category section in the "Statuses" page
    And The "Edit" dialog is opened
    When The user enters the active status details in the "Edit Active Status" dialog:
      | Default |
      | false   |
    And The user clicks the "OK" button in the "Edit Active Status" dialog
    Then The "Edit" dialog is closed
    And The following active statuses are listed in the "Active Statuses" table in the "Customer" category section in the "Statuses" page in the following display order:
      | Can Edit | Status Name                | Description                     | Deleted | Can Delete |
      | true     | Active                     | Default status for active cases | false   | true       |
      | true     | Awaiting implementor       |                                 | false   | true       |
      | true     | Awaiting customer feedback |                                 | false   | true       |

  Scenario: Administrator can edit an existing active status: "Default": "false" to "true"
    Given The following active statuses exist in the following display order:
      | Status Name                | Category | Default |
      | Awaiting implementor       | Customer | false   |
      | Awaiting customer feedback | Customer | false   |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    And The user clicks the "Customize Statuses" link in the "Statuses" section
    And The "Statuses" page is shown
    And The user clicks the "Edit" button for the "Awaiting customer feedback" active status row in the "Active Statuses" table in the "Customer" category section in the "Statuses" page
    And The "Edit" dialog is opened
    When The user enters the active status details in the "Edit Active Status" dialog:
      | Default |
      | true    |
    And The user clicks the "OK" button in the "Edit Active Status" dialog
    Then The "Edit" dialog is closed
    And The following active statuses are listed in the "Active Statuses" table in the "Customer" category section in the "Statuses" page in the following display order:
      | Can Edit | Status Name                | Description                     | Deleted | Can Delete |
      | true     | Active                     |                                 | false   | true       |
      | true     | Awaiting implementor       |                                 | false   | true       |
      | true     | Awaiting customer feedback | Default status for active cases | false   | true       |

  Scenario: Administrator can edit an existing resolved status: "Default": "true" to "false"
    Given The following resolved statuses exist in the following display order:
      | Status Name              | Category | Default |
      | Cancelled by implementor | Customer | false   |
      | Cancelled by customer    | Customer | true    |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    And The user clicks the "Customize Statuses" link in the "Statuses" section
    And The "Statuses" page is shown
    And The user clicks the "Edit" button for the "Cancelled by customer" resolved status row in the "Resolved Statuses" table in the "Customer" category section in the "Statuses" page
    And The "Edit" dialog is opened
    When The user enters the resolved status details in the "Edit Resolved Status" dialog:
      | Default |
      | false   |
    And The user clicks the "OK" button in the "Edit Resolved Status" dialog
    Then The "Edit" dialog is closed
    And The following resolved statuses are listed in the "Resolved Statuses" table in the "Customer" category section in the "Statuses" page in the following display order:
      | Can Edit | Status Name              | Description                                                                      | Deleted | Can Delete |
      | true     | Resolved (Completed)     | Default status for resolved cases,\nUsed for calculating estimate history in EBS | false   | true       |
      | true     | Resolved (Duplicate)     | Duplicate case status                                                            | false   | true       |
      | true     | Cancelled by implementor |                                                                                  | false   | true       |
      | true     | Cancelled by customer    |                                                                                  | false   | true       |

  Scenario: Administrator can edit an existing resolved status: "Default": "false" to "true"
    Given The following resolved statuses exist in the following display order:
      | Status Name              | Category | Default |
      | Cancelled by implementor | Customer | false   |
      | Cancelled by customer    | Customer | false   |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    And The user clicks the "Customize Statuses" link in the "Statuses" section
    And The "Statuses" page is shown
    And The user clicks the "Edit" button for the "Cancelled by customer" resolved status row in the "Resolved Statuses" table in the "Customer" category section in the "Statuses" page
    And The "Edit" dialog is opened
    When The user enters the resolved status details in the "Edit Resolved Status" dialog:
      | Default |
      | true    |
    And The user clicks the "OK" button in the "Edit Resolved Status" dialog
    Then The "Edit" dialog is closed
    And The following resolved statuses are listed in the "Resolved Statuses" table in the "Customer" category section in the "Statuses" page in the following display order:
      | Can Edit | Status Name              | Description                                  | Deleted | Can Delete |
      | true     | Resolved (Completed)     | Used for calculating estimate history in EBS | false   | true       |
      | true     | Resolved (Duplicate)     | Duplicate case status                        | false   | true       |
      | true     | Cancelled by implementor |                                              | false   | true       |
      | true     | Cancelled by customer    | Default status for resolved cases            | false   | true       |
