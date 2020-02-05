@JIRA-Key-MANUSCRIPT-28970
@Vacation
@ResetState
Feature: Vacation - Add - All-day

  Scenario: User can add an all-day vacation
    Given The user is logged in as Normal User
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    And The user clicks the "My Working Schedule" menu item in the "Configuration" section
    And The user clicks the "New Vacation" link in the "Holidays and Vacations" table in the "Upcoming Holidays and Vacations" section in the "My Working Schedule" page
    When The user enters the vacation details in the "New Vacation" dialog:
      | Name           | Date       | End Date   | All day |
      | Happy New Year | 01/01/2099 | 01/14/2099 | true    |
    And The user clicks the "OK" button in the "New Vacation" dialog
    Then The "New Vacation" dialog is closed
    And The following holidays and vacations are listed in the "Holidays and Vacations" table in the "Upcoming Holidays and Vacations" section in the "My Working Schedule" page in the following order:
      | Can Edit | Can Delete | Holiday / Vacation | Date       | End Date   |
      | true     | true       | Happy New Year     | 01/01/2099 | 01/14/2099 |
