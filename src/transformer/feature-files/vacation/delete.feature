@JIRA-Key-MANUSCRIPT-28981
@Vacation
@ResetState
Feature: Vacation - Delete

  Scenario: User can edit an existing all-day vacation
    Given The user is logged in as Normal User
    And The following vacations exist:
      | Name           | Date     | End Date  | All day |
      | Happy New Year | 1/1/2099 | 1/14/2099 | true    |
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    And The user clicks the "My Working Schedule" menu item in the "Configuration" section
    When The user clicks the "Delete" button for the "Happy New Year" vacation row in the "Holidays and Vacations" table in the "Upcoming Holidays and Vacations" section in the "My Working Schedule" page
    And The user clicks the "OK" button in the "Delete Vacation" confirmation dialog
    Then The "Delete Vacation" confirmation dialog is closed
    And The following holidays and vacations are listed in the "Holidays and Vacations" table in the "Upcoming Holidays and Vacations" section in the "My Working Schedule" page in the following order:
      | Can Edit | Can Delete | Holiday / Vacation | Date | End Date |

  Scenario: User can edit an existing non-all-day vacation
    Given The user is logged in as Normal User
    And The following vacations exist:
      | Name           | Date     | End Date  | All day | Date Time | End Date Time |
      | Happy New Year | 1/1/2099 | 1/14/2099 | false   | 1:00 AM   | 1:00 PM       |
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    And The user clicks the "My Working Schedule" menu item in the "Configuration" section
    When The user clicks the "Delete" button for the "Happy New Year" vacation row in the "Holidays and Vacations" table in the "Upcoming Holidays and Vacations" section in the "My Working Schedule" page
    And The user clicks the "OK" button in the "Delete Vacation" confirmation dialog
    Then The "Delete Vacation" confirmation dialog is closed
    And The following holidays and vacations are listed in the "Holidays and Vacations" table in the "Upcoming Holidays and Vacations" section in the "My Working Schedule" page in the following order:
      | Can Edit | Can Delete | Holiday / Vacation | Date | End Date |
