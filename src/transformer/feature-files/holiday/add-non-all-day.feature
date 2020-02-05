@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30908
@Holiday
Feature: Holiday - Add - Non-all-day

  Scenario: Administrator can add an non-all-day holiday
    Given The user is logged in as Administrator
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    And The user clicks the "Site Working Schedule" menu item in the "Configuration" section
    And The user clicks the "Create New Holiday" link in the "Holidays" table in the "Holidays affecting everyone" section in the "Site Working Schedule" page
    When The user enters the holiday details in the "New Holiday" dialog:
      | Name            | Date       | End Date   | All day | Date Time | End Date Time |
      | January Holiday | 01/01/2099 | 01/14/2099 | false   | 1:00 AM   | 1:00 PM       |
    And The user clicks the "OK" button in the "New Holiday" dialog
    Then The "New Holiday" dialog is closed
    And The following holidays are listed in the "Holidays" table in the "Holidays affecting everyone" section in the "Site Working Schedule" page in the following order:
      | Can Edit | Can Delete | Holiday         | Date               | End Date           |
      | true     | true       | January Holiday | 01/01/2099 1:00 AM | 01/14/2099 1:00 PM |
