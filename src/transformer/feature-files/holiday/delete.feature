@JIRA-Key-MANUSCRIPT-28743
@Holiday
@ResetState
Feature: Holiday - Delete

  Scenario: Administrator can delete an existing all-day holiday
    Given The user is logged in as Administrator
    And The following holidays exist:
      | Name            | Date     | End Date  | All day |
      | January Holiday | 1/1/2099 | 1/14/2099 | true    |
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    And The user clicks the "Site Working Schedule" menu item in the "Configuration" section
    And The user clicks the "Delete" button for the "January Holiday" holiday row in the "Holidays" table in the "Holidays affecting everyone" section in the "Site Working Schedule" page
    When The user clicks the "OK" button in the "Delete Holiday" confirmation dialog
    Then The "Delete Holiday" confirmation dialog is closed
    And The following holidays are listed in the "Holidays" table in the "Holidays affecting everyone" section in the "Site Working Schedule" page in the following order:
      | Can Edit | Can Delete | Holiday | Date | End Date |

  Scenario: Administrator can delete an existing non-all-day holiday
    Given The user is logged in as Administrator
    And The following holidays exist:
      | Name            | Date     | End Date  | All day | Date Time | End Date Time |
      | January Holiday | 1/1/2099 | 1/14/2099 | false   | 1:00 AM   | 1:00 PM       |
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    And The user clicks the "Site Working Schedule" menu item in the "Configuration" section
    And The user clicks the "Delete" button for the "January Holiday" holiday row in the "Holidays" table in the "Holidays affecting everyone" section in the "Site Working Schedule" page
    When The user clicks the "OK" button in the "Delete Holiday" confirmation dialog
    Then The "Delete Holiday" confirmation dialog is closed
    And The following holidays are listed in the "Holidays" table in the "Holidays affecting everyone" section in the "Site Working Schedule" page in the following order:
      | Can Edit | Can Delete | Holiday | Date | End Date |
