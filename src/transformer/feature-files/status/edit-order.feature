@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29091
@Status
Feature: Status - Edit order

  Scenario: Administrator can edit an existing active status: Display order: Move Up
    Given The following categories exist in the following display order:
      | Category Name | Plural Name | Icon          | Default |
      | Customer      | Customers   | Schedule Item | false   |
    And The following active statuses exist in the following display order:
      | Status Name         | Category |
      | Awaiting customer 1 | Customer |
      | Awaiting customer 2 | Customer |
      | Awaiting customer 3 | Customer |
    And The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    And The user clicks the "Customize Statuses" link in the "Statuses" section
    And The "Statuses" page is shown
    # NOTE: Please, notice the legacy user interface: the Up/Down arrows.
    When The user clicks the "Up" icon of the "Awaiting customer 2" active status row in the "Active Statuses" table in the "Customer" category section in the "Statuses" page
    Then The "Statuses" page is reloaded
    And The following active statuses are listed in the "Active Statuses" table in the "Customer" category section in the "Statuses" page in the following display order:
      | Can Edit | Status Name         | Description                     | Display Order | Deleted | Can Delete |
      | true     | Active              | Default status for active cases | Down          | false   | true       |
      | true     | Awaiting customer 2 |                                 | Down, Up      | false   | true       |
      | true     | Awaiting customer 1 |                                 | Down, Up      | false   | true       |
      | true     | Awaiting customer 3 |                                 | Up            | false   | true       |

  Scenario: Administrator can edit an existing active status: Display order: Move Down
    Given The following categories exist in the following display order:
      | Category Name | Plural Name | Icon          | Default |
      | Customer      | Customers   | Schedule Item | false   |
    And The following active statuses exist in the following display order:
      | Status Name         | Category |
      | Awaiting customer 1 | Customer |
      | Awaiting customer 2 | Customer |
      | Awaiting customer 3 | Customer |
    And The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    And The user clicks the "Customize Statuses" link in the "Statuses" section
    And The "Statuses" page is shown
    # NOTE: Please, notice the legacy user interface: the Up/Down arrows.
    When The user clicks the "Down" icon of the "Awaiting customer 2" active status row in the "Active Statuses" table in the "Customer" category section in the "Statuses" page
    Then The "Statuses" page is reloaded
    And The following active statuses are listed in the "Active Statuses" table in the "Customer" category section in the "Statuses" page in the following display order:
      | Can Edit | Status Name         | Description                     | Display Order | Deleted | Can Delete |
      | true     | Active              | Default status for active cases | Down          | false   | true       |
      | true     | Awaiting customer 1 |                                 | Down, Up      | false   | true       |
      | true     | Awaiting customer 3 |                                 | Down, Up      | false   | true       |
      | true     | Awaiting customer 2 |                                 | Up            | false   | true       |

  Scenario: Administrator can edit an existing resolved status: Display order: Move Up
    Given The following categories exist in the following display order:
      | Category Name | Plural Name | Icon          | Default |
      | Customer      | Customers   | Schedule Item | false   |
    And The following resolved statuses exist in the following display order:
      | Status Name | Category | Default | Postpone | Work Done |
      | Cancelled 1 | Customer | false   | false    | false     |
      | Cancelled 2 | Customer | false   | false    | false     |
      | Cancelled 3 | Customer | false   | false    | false     |
    And The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    And The user clicks the "Customize Statuses" link in the "Statuses" section
    And The "Statuses" page is shown
    # NOTE: Please, notice the legacy user interface: the Up/Down arrows.
    When The user clicks the "Up" icon of the "Cancelled 2" resolved status row in the "Resolved Statuses" table in the "Customer" category section in the "Statuses" page
    Then The "Statuses" page is reloaded
    And The following resolved statuses are listed in the "Resolved Statuses" table in the "Customer" category section in the "Statuses" page in the following display order:
      | Can Edit | Status Name          | Description                                                                      | Display Order | Deleted | Can Delete |
      | true     | Resolved (Completed) | Default status for resolved cases,\nUsed for calculating estimate history in EBS | Down          | false   | true       |
      | true     | Resolved (Duplicate) | Duplicate case status                                                            | Down, Up      | false   | true       |
      | true     | Cancelled 2          |                                                                                  | Down, Up      | false   | true       |
      | true     | Cancelled 1          |                                                                                  | Down, Up      | false   | true       |
      | true     | Cancelled 3          |                                                                                  | Up            | false   | true       |

  Scenario: Administrator can edit an existing resolved status: Display order: Move Down
    Given The following categories exist in the following display order:
      | Category Name | Plural Name | Icon          | Default |
      | Customer      | Customers   | Schedule Item | false   |
    And The following resolved statuses exist in the following display order:
      | Status Name | Category |
      | Cancelled 1 | Customer |
      | Cancelled 2 | Customer |
      | Cancelled 3 | Customer |
    And The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    And The user clicks the "Customize Statuses" link in the "Statuses" section
    And The "Statuses" page is shown
    # NOTE: Please, notice the legacy user interface: the Up/Down arrows.
    When The user clicks the "Down" icon of the "Cancelled 2" resolved status row in the "Resolved Statuses" table in the "Customer" category section in the "Statuses" page
    Then The "Statuses" page is reloaded
    And The following resolved statuses are listed in the "Resolved Statuses" table in the "Customer" category section in the "Statuses" page in the following display order:
      | Can Edit | Status Name          | Description                                                                      | Display Order | Deleted | Can Delete |
      | true     | Resolved (Completed) | Default status for resolved cases,\nUsed for calculating estimate history in EBS | Down          | false   | true       |
      | true     | Resolved (Duplicate) | Duplicate case status                                                            | Down, Up      | false   | true       |
      | true     | Cancelled 1          |                                                                                  | Down, Up      | false   | true       |
      | true     | Cancelled 3          |                                                                                  | Down, Up      | false   | true       |
      | true     | Cancelled 2          |                                                                                  | Up            | false   | true       |
