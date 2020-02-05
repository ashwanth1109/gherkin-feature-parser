@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30915
@Vacation
Feature: Vacation - Edit - Non-all-day

  Scenario: User can edit an existing non-all-day vacation
    Given The user is logged in as Normal User
    And The following vacations exist:
      | Name           | Date     | End Date  | All day | Date Time | End Date Time |
      | Happy New Year | 1/1/2099 | 1/14/2099 | false   | 1:00 AM   | 1:00 PM       |
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    And The user clicks the "My Working Schedule" menu item in the "Configuration" section
    And The user clicks the "Edit" button for the "Happy New Year" vacation row in the "Holidays and Vacations" table in the "Upcoming Holidays and Vacations" section in the "My Working Schedule" page
    When The user enters the vacation details in the "Edit Vacation" dialog:
      | Name             | Date       | End Date   | All day | Date Time | End Date Time |
      | Another Vacation | 03/01/2099 | 03/14/2099 | false   | 12:00 AM  | 12:00 PM      |
    And The user clicks the "OK" button in the "Edit Vacation" dialog
    Then The "Edit Vacation" dialog is closed
    And The following holidays and vacations are listed in the "Holidays and Vacations" table in the "Upcoming Holidays and Vacations" section in the "My Working Schedule" page in the following order:
      | Can Edit | Can Delete | Holiday / Vacation | Date                | End Date            |
      | true     | true       | Another Vacation   | 03/01/2099 12:00 AM | 03/14/2099 12:00 PM |

  Scenario: User can edit an existing all-day vacation to make it non-all-day
    Given The user is logged in as Normal User
    And The following vacations exist:
      | Name           | Date     | End Date  | All day |
      | Happy New Year | 1/1/2099 | 1/14/2099 | true    |
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    And The user clicks the "My Working Schedule" menu item in the "Configuration" section
    And The user clicks the "Edit" button for the "Happy New Year" vacation row in the "Holidays and Vacations" table in the "Upcoming Holidays and Vacations" section in the "My Working Schedule" page
    When The user enters the vacation details in the "Edit Vacation" dialog:
      | Name             | Date       | End Date   | All day | Date Time | End Date Time |
      | Another Vacation | 03/01/2099 | 03/14/2099 | false   | 1:00 AM   | 1:00 PM       |
    And The user clicks the "OK" button in the "Edit Vacation" dialog
    Then The "Edit Vacation" dialog is closed
    And The following holidays and vacations are listed in the "Holidays and Vacations" table in the "Upcoming Holidays and Vacations" section in the "My Working Schedule" page in the following order:
      | Can Edit | Can Delete | Holiday / Vacation | Date               | End Date           |
      | true     | true       | Another Vacation   | 03/01/2099 1:00 AM | 03/14/2099 1:00 PM |
