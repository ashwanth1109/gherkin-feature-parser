@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29090
@Status
Feature: Status - View all

  Scenario: Administrator can view all statuses
    Given The user is logged in as Administrator
    And The following categories exist in the following display order:
      | Category Name | Plural Name | Icon          | Default |
      | Customer      | Customers   | Schedule Item | false   |
      | Root cause    | Root causes | Inquiry       | false   |
    And The following active statuses exist in the following display order:
      | Status Name                | Category   | Deleted |
      | Wrong Customer             | Customer   | true    |
      | Awaiting customer feedback | Customer   | false   |
      | Wrong Analysis             | Root cause | true    |
      | Analysis                   | Root cause | false   |
    And The following resolved statuses exist in the following display order:
      | Status Name           | Category   | Default | Postpone | Work Done | Deleted |
      | Unresolved            | Customer   | false   | false    | false     | true    |
      | Cancelled by customer | Customer   | false   | false    | false     | false   |
      | Not Found             | Root Cause | false   | false    | false     | true    |
      | Found                 | Root Cause | false   | false    | false     | false   |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    When The user clicks the "Customize Statuses" link in the "Statuses" section
    Then The "Statuses" page is shown
    And The following active statuses are listed in the "Active Statuses" table in the "Customer" category section in the "Statuses" page in the following display order:
      | Can Edit | Status Name                | Description                     | Display Order | Deleted | Can Delete | Can Undelete |
      | true     | Active                     | Default status for active cases | Down          | false   | true       | false        |
      | true     | Awaiting customer feedback |                                 | Up            | false   | true       | false        |
      | false    | Wrong Customer             |                                 | Inactive      | true    | false      | true         |
    And The following resolved statuses are listed in the "Resolved Statuses" table in the "Customer" category section in the "Statuses" page in the following display order:
      | Can Edit | Status Name           | Description                                                                      | Display Order | Deleted | Can Delete | Can Undelete |
      | true     | Resolved (Completed)  | Default status for resolved cases,\nUsed for calculating estimate history in EBS | Down          | false   | true       | false        |
      | true     | Resolved (Duplicate)  | Duplicate case status                                                            | Down, Up      | false   | true       | false        |
      | true     | Cancelled by customer |                                                                                  | Up            | false   | true       | false        |
      | false    | Unresolved            |                                                                                  | Inactive      | true    | false      | true         |
    And The following active statuses are listed in the "Active Statuses" table in the "Root cause" category section in the "Statuses" page in the following display order:
      | Can Edit | Status Name    | Description                     | Display Order | Deleted | Can Delete | Can Undelete |
      | true     | Active         | Default status for active cases | Down          | false   | true       | false        |
      | true     | Analysis       |                                 | Up            | false   | true       | false        |
      | false    | Wrong Analysis |                                 | Inactive      | true    | false      | true         |
    And The following resolved statuses are listed in the "Resolved Statuses" table in the "Root cause" category section in the "Statuses" page in the following display order:
      | Can Edit | Status Name          | Description                                                                      | Display Order | Deleted | Can Delete | Can Undelete |
      | true     | Resolved (Completed) | Default status for resolved cases,\nUsed for calculating estimate history in EBS | Down          | false   | true       | false        |
      | true     | Resolved (Duplicate) | Duplicate case status                                                            | Down, Up      | false   | true       | false        |
      | true     | Found                |                                                                                  | Up            | false   | true       | false        |
      | false    | Not Found            |                                                                                  | Inactive      | true    | false      | true         |
