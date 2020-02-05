@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30912
@Holiday
Feature: Holiday - View all

  Scenario: Administrator can view all existing holidays: Holidays are ordered by "Date" in ascending order
    Given The user is logged in as Administrator
    And The following holidays exist:
      | Name           | Date       | End Date    | All day | Date Time | End Date Time |
      | Test 1         | 01/01/2099 | 01/14/2099  | false   | 1:00 AM   | 1:00 PM       |
      | Test 2         | 02/01/2099 | 02/14/2099  | false   | 12:00 AM  | 12:00 PM      |
      | Test 3         | 01/01/2099 | 01/14/2099  | false   | 12:30 AM  | 1:00 AM       |
      | Test 4         | 02/01/2099 | 02/14/2099  | false   | 12:30 AM  | 1:00 PM       |
      | Test all-day 5 | 01/01/2098 | 01/14/2098  | true    |           |               |
      | Test all-day 6 | 01/02/2099 | 01/12/2099  | true    |           |               |
      | Test all-day 7 | 01/03/2099 | 01/09/2099  | true    |           |               |
      | Test all-day 8 | 02/02/2099 | 02/09/2099  | true    |           |               |
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    When The user clicks the "Site Working Schedule" menu item in the "Configuration" section
    Then The following holidays are listed in the "Holidays" table in the "Holidays affecting everyone" section in the "Site Working Schedule" page in the following order:
      | Can Edit | Can Delete | Holiday        | Date                | End Date             |
      | true     | true       | Test all-day 5 | 01/01/2098          | 01/14/2098           |
      | true     | true       | Test 3         | 01/01/2099 12:30 AM | 01/14/2099 1:00 AM   |
      | true     | true       | Test 1         | 01/01/2099 1:00 AM  | 01/14/2099 1:00 PM   |
      | true     | true       | Test all-day 6 | 01/02/2099          | 01/12/2099           |
      | true     | true       | Test all-day 7 | 01/03/2099          | 01/09/2099           |
      | true     | true       | Test 2         | 02/01/2099 12:00 AM | 02/14/2099 12:00 PM  |
      | true     | true       | Test 4         | 02/01/2099 12:30 AM | 02/14/2099 1:00 PM   |
      | true     | true       | Test all-day 8 | 02/02/2099          | 02/09/2099           |
