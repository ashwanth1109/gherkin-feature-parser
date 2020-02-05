@JIRA-Key-MANUSCRIPT-29827
@Schedule
Feature: Schedule - Working Days

  Scenario: User can define working days
    Given The user is logged in as Administrator
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    And The user clicks the "Site Working Schedule" menu item in the "Configuration" section
    When The user enters the following details in the "Site Working Schedule" page:
      | Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday |
      | true   | true   | true    | true      | true     | true   | true     |
    Then The user clicks the "OK" button in the "Site Working Schedule" page
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    And The user clicks the "Site Working Schedule" menu item in the "Configuration" section
    And The following details are shown in the "Site Working Schedule" page:
      | Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday |
      | true   | true   | true    | true      | true     | true   | true     |
