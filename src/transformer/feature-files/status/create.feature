@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29066
@Status
Feature: Status - Create

  Background:
    Given The user is logged in as Administrator
    And The following categories exist in the following display order:
      | Category Name | Plural Name | Icon          | Default |
      | Customer      | Customers   | Schedule Item | false   |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    And The user clicks the "Customize Statuses" link in the "Statuses" section
    And The "Statuses" page is shown

  Scenario: Administrator can create a new active status
    Given The user clicks the "Create New Active Status" link in the "Active Statuses" table in the "Customer" category section in the "Statuses" page
    And The "New Active Status" dialog is opened
    When The user enters the active status details in the "New Active Status" dialog:
      | Status Name                |
      | Awaiting customer feedback |
    And The user clicks the "OK" button in the "New Active Status" dialog
    Then The "New Active Status" dialog is closed
    And The following active statuses are listed in the "Active Statuses" table in the "Customer" category section in the "Statuses" page in the following display order:
      | Can Edit | Status Name                | Description                     | Display Order | Deleted | Can Delete |
      | true     | Active                     | Default status for active cases | Down          | false   | true       |
      | true     | Awaiting customer feedback |                                 | Up            | false   | true       |

  Scenario: Administrator can create a new resolved status
    Given The user clicks the "Create New Resolved Status" link in the "Resolved Statuses" table in the "Customer" category section in the "Statuses" page
    And The "New Resolved Status" dialog is opened
    When The user enters the resolved status details in the "New Resolved Status" dialog:
      | Status Name           |
      | Cancelled by customer |
    And The user clicks the "OK" button in the "New Resolved Status" dialog
    Then The "New Resolved Status" dialog is closed
    And The following resolved statuses are listed in the "Resolved Statuses" table in the "Customer" category section in the "Statuses" page in the following display order:
      | Can Edit | Status Name           | Description                                                                      | Display Order | Deleted | Can Delete |
      | true     | Resolved (Completed)  | Default status for resolved cases,\nUsed for calculating estimate history in EBS | Down          | false   | true       |
      | true     | Resolved (Duplicate)  | Duplicate case status                                                            | Down, Up      | false   | true       |
      | true     | Cancelled by customer |                                                                                  | Up            | false   | true       |
