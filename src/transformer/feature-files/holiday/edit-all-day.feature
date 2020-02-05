@JIRA-Key-MANUSCRIPT-28742
@Holiday
@ResetState
Feature: Holiday - Edit - All-day

  Scenario: Administrator can edit an existing all-day holiday
    Given The user is logged in as Administrator
    And The following holidays exist:
      | Name            | Date       | End Date   | All day |
      | January Holiday | 01/01/2099 | 01/14/2099 | true    |
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    And The user clicks the "Site Working Schedule" menu item in the "Configuration" section
    And The user clicks the "Edit" button for the "January Holiday" holiday row in the "Holidays" table in the "Holidays affecting everyone" section in the "Site Working Schedule" page
    When The user enters the holiday details in the "Edit Holiday" dialog:
      | Name             | Date       | End Date   | All day |
      | February Holiday | 02/01/2099 | 02/14/2099 | true    |
    And The user clicks the "OK" button in the "Edit Holiday" dialog
    Then The "Edit Holiday" dialog is closed
    And The following holidays are listed in the "Holidays" table in the "Holidays affecting everyone" section in the "Site Working Schedule" page in the following order:
      | Can Edit | Can Delete | Holiday          | Date       | End Date   |
      | true     | true       | February Holiday | 02/01/2099 | 02/14/2099 |

  Scenario: Administrator can edit an existing non-all-day holiday to make it all-day
    Given The user is logged in as Administrator
    And The following holidays exist:
      | Name            | Date       | End Date   | All day | Date Time | End Date Time |
      | January Holiday | 01/01/2099 | 01/14/2099 | false   | 1:00 AM   | 1:00 PM       |
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    And The user clicks the "Site Working Schedule" menu item in the "Configuration" section
    And The user clicks the "Edit" button for the "January Holiday" holiday row in the "Holidays" table in the "Holidays affecting everyone" section in the "Site Working Schedule" page
    When The user enters the holiday details in the "Edit Holiday" dialog:
      | Name             | Date       | End Date   | All day |
      | February Holiday | 02/01/2099 | 02/14/2099 | true    |
    And The user clicks the "OK" button in the "Edit Holiday" dialog
    Then The "Edit Holiday" dialog is closed
    And The following holidays are listed in the "Holidays" table in the "Holidays affecting everyone" section in the "Site Working Schedule" page in the following order:
      | Can Edit | Can Delete | Holiday          | Date       | End Date   |
      | true     | true       | February Holiday | 02/01/2099 | 02/14/2099 |
