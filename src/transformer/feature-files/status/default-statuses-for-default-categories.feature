@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29366
@Status
Feature: Status - Default statuses for default categories

  Scenario: System provides the default statuses for default categories
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Workflow" menu item in the sidebar menu
    When The user clicks the "Customize Statuses" link in the "Statuses" section
    Then The "Statuses" page is shown
    # The statuses for the "Bug" category.
    And The following active statuses are listed in the "Active Statuses" table in the "Bug" category section in the "Statuses" page in the following display order:
      | Can Edit | Status Name | Description                     | Display Order | Deleted | Can Delete |
      | true     | Active      | Default status for active cases |               | false   | false      |
    And The following active statuses are listed in the "Active Statuses" table in the "Bug" category section in the "Statuses" page with the following "Edit Active Status" dialog details:
      | Status Name | Default |
      | Active      | true    |
    And The following resolved statuses are listed in the "Resolved Statuses" table in the "Bug" category section in the "Statuses" page in the following display order:
      | Can Edit | Status Name                 | Description                                                                      | Display Order | Deleted | Can Delete |
      | true     | Resolved (Fixed)            | Default status for resolved cases,\nUsed for calculating estimate history in EBS | Down          | false   | true       |
      | true     | Resolved (Not Reproducible) |                                                                                  | Down, Up      | false   | true       |
      | true     | Resolved (Duplicate)        | Duplicate case status                                                            | Down, Up      | false   | true       |
      | true     | Resolved (Postponed)        |                                                                                  | Down, Up      | false   | true       |
      | true     | Resolved (Won't Fix)        |                                                                                  | Down, Up      | false   | true       |
      | true     | Resolved (By Design)        |                                                                                  | Up            | false   | true       |
    And The following resolved statuses are listed in the "Resolved Statuses" table in the "Bug" category section in the "Statuses" page with the following "Edit Resolved Status" dialog details:
      | Status Name                 | Default | Postpone | Work Done |
      | Resolved (Fixed)            | true    | false    | true      |
      | Resolved (Not Reproducible) | false   | false    | false     |
      | Resolved (Duplicate)        | false   | false    | false     |
      | Resolved (Postponed)        | false   | true     | false     |
      | Resolved (Won't Fix)        | false   | false    | false     |
      | Resolved (By Design)        | false   | false    | false     |
    # The statuses for the "Feature" category.
    And The following active statuses are listed in the "Active Statuses" table in the "Feature" category section in the "Statuses" page in the following display order:
      | Can Edit | Status Name | Description                     | Display Order | Deleted | Can Delete |
      | true     | Active      | Default status for active cases |               | false   | false      |
    And The following active statuses are listed in the "Active Statuses" table in the "Feature" category section in the "Statuses" page with the following "Edit Active Status" dialog details:
      | Status Name | Default |
      | Active      | true    |
    And The following resolved statuses are listed in the "Resolved Statuses" table in the "Feature" category section in the "Statuses" page in the following display order:
      | Can Edit | Status Name                | Description                                                                      | Display Order | Deleted | Can Delete |
      | true     | Resolved (Implemented)     | Default status for resolved cases,\nUsed for calculating estimate history in EBS | Down          | false   | true       |
      | true     | Resolved (Won't Implement) |                                                                                  | Down, Up      | false   | true       |
      | true     | Resolved (Already Exists)  |                                                                                  | Down, Up      | false   | true       |
      | true     | Resolved (Duplicate)       | Duplicate case status                                                            | Down, Up      | false   | true       |
      | true     | Resolved (By Design)       |                                                                                  | Down, Up      | false   | true       |
      | true     | Resolved (Postponed)       |                                                                                  | Up            | false   | true       |
    And The following resolved statuses are listed in the "Resolved Statuses" table in the "Feature" category section in the "Statuses" page with the following "Edit Resolved Status" dialog details:
      | Status Name                | Default | Postpone | Work Done |
      | Resolved (Implemented)     | true    | false    | true      |
      | Resolved (Won't Implement) | false   | false    | false     |
      | Resolved (Already Exists)  | false   | false    | false     |
      | Resolved (Duplicate)       | false   | false    | false     |
      | Resolved (By Design)       | false   | false    | false     |
      | Resolved (Postponed)       | false   | true     | false     |
    # The statuses for the "Inquiry" category.
    And The following active statuses are listed in the "Active Statuses" table in the "Inquiry" category section in the "Statuses" page in the following display order:
      | Can Edit | Status Name | Description                     | Display Order | Deleted | Can Delete |
      | true     | Active      | Default status for active cases |               | false   | false      |
    And The following active statuses are listed in the "Active Statuses" table in the "Inquiry" category section in the "Statuses" page with the following "Edit Active Status" dialog details:
      | Status Name | Default |
      | Active      | true    |
    And The following resolved statuses are listed in the "Resolved Statuses" table in the "Inquiry" category section in the "Statuses" page in the following display order:
      | Can Edit | Status Name                 | Description                                                                      | Display Order | Deleted | Can Delete |
      | true     | Resolved (Responded)        | Default status for resolved cases,\nUsed for calculating estimate history in EBS | Down          | false   | true       |
      | true     | Resolved (Won't Respond)    |                                                                                  | Down, Up      | false   | true       |
      | true     | Resolved (SPAM)             |                                                                                  | Down, Up      | false   | true       |
      | true     | Resolved (Waiting For Info) |                                                                                  | Down, Up      | false   | true       |
      | true     | Resolved (Duplicate)        | Duplicate case status                                                            | Down, Up      | false   | true       |
      | true     | Resolved (By Design)        |                                                                                  | Up            | false   | true       |
    And The following resolved statuses are listed in the "Resolved Statuses" table in the "Inquiry" category section in the "Statuses" page with the following "Edit Resolved Status" dialog details:
      | Status Name                 | Default | Postpone | Work Done |
      | Resolved (Responded)        | true    | false    | true      |
      | Resolved (Won't Respond)    | false   | false    | false     |
      | Resolved (SPAM)             | false   | false    | false     |
      | Resolved (Waiting For Info) | false   | true     | false     |
      | Resolved (Duplicate)        | false   | false    | false     |
      | Resolved (By Design)        | false   | true     | false     |
    # The statuses for the "Schedule Item" category.
    And The following active statuses are listed in the "Active Statuses" table in the "Schedule Item" category section in the "Statuses" page in the following display order:
      | Can Edit | Status Name | Description                     | Display Order | Deleted | Can Delete |
      | true     | Active      | Default status for active cases |               | false   | false      |
    And The following active statuses are listed in the "Active Statuses" table in the "Schedule Item" category section in the "Statuses" page with the following "Edit Active Status" dialog details:
      | Status Name | Default |
      | Active      | true    |
    And The following resolved statuses are listed in the "Resolved Statuses" table in the "Schedule Item" category section in the "Statuses" page in the following display order:
      | Can Edit | Status Name          | Description                                                                      | Display Order | Deleted | Can Delete |
      | true     | Resolved (Completed) | Default status for resolved cases,\nUsed for calculating estimate history in EBS | Down          | false   | true       |
      | true     | Resolved (Canceled)  |                                                                                  | Down, Up      | false   | true       |
      | true     | Resolved (Duplicate) | Duplicate case status                                                            | Down, Up      | false   | true       |
      | true     | Resolved (By Design) |                                                                                  | Down, Up      | false   | true       |
      | true     | Resolved (Postponed) |                                                                                  | Up            | false   | true       |
    And The following resolved statuses are listed in the "Resolved Statuses" table in the "Schedule Item" category section in the "Statuses" page with the following "Edit Resolved Status" dialog details:
      | Status Name          | Default | Postpone | Work Done |
      | Resolved (Completed) | true    | false    | true      |
      | Resolved (Canceled)  | false   | false    | false     |
      | Resolved (Duplicate) | false   | false    | false     |
      | Resolved (By Design) | false   | false    | false     |
      | Resolved (Postponed) | false   | true     | false     |
