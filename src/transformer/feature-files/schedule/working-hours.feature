@JIRA-Key-MANUSCRIPT-29826
@Schedule
Feature: Schedule - Working Hours

  Scenario Outline: User can define working hours
    Given The user is logged in as Administrator
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    And The user clicks the "Site Working Schedule" menu item in the "Configuration" section
    When The user enters the following details in the "Site Working Schedule" page:
      | Workday starts at | and ends at   |
      | <Workday Start>   | <Workday End> |
    Then The user clicks the "OK" button in the "Site Working Schedule" page
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    And The user clicks the "Site Working Schedule" menu item in the "Configuration" section
    And The following details are shown in the "Site Working Schedule" page:
      | Workday starts at | and ends at   |
      | <Workday Start>   | <Workday End> |
    Examples:
      | Workday Start | Workday End |
      | 9:00 AM       | 8:00 PM     |
      | 12:00 AM      | 12:30 AM    |
      | 11:30 PM      | 12:00 AM    |
      | 9:00 PM       | 6:00 PM     |

  Scenario: User cannot define working hours to be the same time
    Given The user is logged in as Administrator
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    And The user clicks the "Site Working Schedule" menu item in the "Configuration" section
    And The following details are shown in the "Site Working Schedule" page:
      | Workday starts at | and ends at |
      | 9:00 AM           | 1:00 PM     |
    When The user enters the following details in the "Site Working Schedule" page:
      | Workday starts at | and ends at |
      | 9:00 AM           | 9:00 AM     |
    And The user clicks the "OK" button in the "Site Working Schedule" page
    Then The following details are shown in the "Site Working Schedule" page:
      | Workday starts at | and ends at |
      | 9:00 AM           | 1:00 PM     |
