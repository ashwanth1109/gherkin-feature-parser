@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29994
@Schedule
Feature: Site Working Schedule - Daily Schedule - Lunch starts at - Toggle

  Scenario Outline: User can define when does the lunch start
    Given The user is logged in as Administrator
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    And The user clicks the "Site Working Schedule" menu item in the "Configuration" section
    When The user enters the following details in the "Site Working Schedule" page:
      | Lunch starts at | and lasts for |
      | <Lunch Start>   | <Lunch Last>  |
    Then The user clicks the "OK" button in the "Working Schedule" page
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    And The user clicks the "Site Working Schedule" menu item in the "Configuration" section
    And The following details are shown in the "Site Working Schedule" page:
      | Lunch starts at | and lasts for |
      | <Lunch Start>   | <Lunch Last>  |
    Examples:
      | Lunch Start | Lunch Last   |
      | 9:00 AM     | 30 m         |
      | 12:00 AM    | 3 hours      |
      | 11:30 PM    | 1 hour       |
      | 9:00 PM     | 2 hours 45 m |
