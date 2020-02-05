@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30916
@Vacation
Feature: Vacation - View all - Vacations

  Scenario: User can view all existing vacations: Vacations are ordered by "Date" in ascending order
    Given The user is logged in as Normal User
    And The following vacations exist:
      | Name           | Date     | End Date  | All day | Date Time | End Date Time |
      | Test 1         | 1/1/2099 | 1/14/2099 | false   | 1:00 AM   | 1:00 PM       |
      | Test 2         | 2/1/2099 | 2/14/2099 | false   | 12:00 AM  | 12:00 PM      |
      | Test 3         | 1/1/2099 | 1/14/2099 | false   | 12:30 AM  | 1:00 AM       |
      | Test 4         | 2/1/2099 | 2/14/2099 | false   | 12:30 AM  | 1:00 PM       |
      | Test all-day 5 | 1/1/2098 | 1/14/2098 | true    |           |               |
      | Test all-day 6 | 1/2/2099 | 1/12/2099 | true    |           |               |
      | Test all-day 7 | 1/3/2099 | 1/9/2099  | true    |           |               |
      | Test all-day 8 | 2/2/2099 | 2/9/2099  | true    |           |               |
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    When The user clicks the "My Working Schedule" menu item in the "Configuration" section
    Then The following holidays and vacations are listed in the "Holidays and Vacations" table in the "Upcoming Holidays and Vacations" section in the "My Working Schedule" page in the following order:
      | Can Edit | Can Delete | Holiday / Vacation | Date                | End Date             |
      | true     | true       | Test all-day 5     | 01/01/2098          | 01/14/2098           |
      | true     | true       | Test 3             | 01/01/2099 12:30 AM | 01/14/2099 1:00 AM   |
      | true     | true       | Test 1             | 01/01/2099 1:00 AM  | 01/14/2099 1:00 PM   |
      | true     | true       | Test all-day 6     | 01/02/2099          | 01/12/2099           |
      | true     | true       | Test all-day 7     | 01/03/2099          | 01/09/2099           |
      | true     | true       | Test 2             | 02/01/2099 12:00 AM | 02/14/2099 12:00 PM  |
      | true     | true       | Test 4             | 02/01/2099 12:30 AM | 02/14/2099 1:00 PM   |
      | true     | true       | Test all-day 8     | 02/02/2099          | 02/09/2099           |
