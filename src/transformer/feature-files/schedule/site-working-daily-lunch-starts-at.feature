@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29993
@Schedule
Feature: Site Working Schedule - Daily Schedule - Lunch starts at

  Scenario: User can select among values for lunch hours
    Given The user is logged in as Administrator
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    When The user clicks the "Site Working Schedule" menu item in the "Configuration" section
    And The user clicks the "Lunch starts at" dropdown in the "Working Schedule" page
    Then The following lunch starts at hours are listed in the "Lunch starts at" dropdown in the "Working Schedule" page:
      | 12:00 AM |
      | 12:30 AM |
      | 1:00 AM  |
      | 1:30 AM  |
      | 2:00 AM  |
      | 2:30 AM  |
      | 3:00 AM  |
      | 3:30 AM  |
      | 4:00 AM  |
      | 4:30 AM  |
      | 5:00 AM  |
      | 5:30 AM  |
      | 6:00 AM  |
      | 6:30 AM  |
      | 7:00 AM  |
      | 7:30 AM  |
      | 8:00 AM  |
      | 8:30 AM  |
      | 9:00 AM  |
      | 9:30 AM  |
      | 10:00 AM |
      | 10:30 AM |
      | 11:00 AM |
      | 11:30 AM |
      | 12:00 PM |
      | 12:30 PM |
      | 1:00 PM  |
      | 1:30 PM  |
      | 2:00 PM  |
      | 2:30 PM  |
      | 3:00 PM  |
      | 3:30 PM  |
      | 4:00 PM  |
      | 4:30 PM  |
      | 5:00 PM  |
      | 5:30 PM  |
      | 6:00 PM  |
      | 6:30 PM  |
      | 7:00 PM  |
      | 7:30 PM  |
      | 8:00 PM  |
      | 8:30 PM  |
      | 9:00 PM  |
      | 9:30 PM  |
      | 10:00 PM |
      | 10:30 PM |
      | 11:00 PM |
      | 11:30 PM |

  Scenario: User can select among values for lunch lasts for
    Given The user is logged in as Administrator
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    When The user clicks the "Site Working Schedule" menu item in the "Configuration" section
    And The user clicks the "Lunch lasts for" dropdown in the "Working Schedule" page
    Then The following lunch lasts for hours are listed in the "Lunch lasts for" dropdown in the "Working Schedule" page:
      | 15 m         |
      | 30 m         |
      | 45 m         |
      | 1 hour       |
      | 1 hour 15 m  |
      | 1 hour 30 m  |
      | 1 hour 45 m  |
      | 2 hours      |
      | 2 hours 15 m |
      | 2 hours 30 m |
      | 2 hours 45 m |
      | 3 hours      |
