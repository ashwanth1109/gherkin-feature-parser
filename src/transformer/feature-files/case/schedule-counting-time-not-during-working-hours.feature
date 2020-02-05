@NotAutomated
@JIRA-Key-MANUSCRIPT-31629
@Case
Feature: Case - Schedule - Counting time not during working hours

  Scenario: User can start work when not during working hours
    Given The user is logged in as Administrator
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    And The user clicks the "My Working Schedule" menu item in the "Configuration" section
    And The user enters the following details in the "My Working Schedule" page:
      | Workday starts at           | and ends at                 |
      | "Current time" + 30 minutes | "Current time" + 60 minutes |
    And The user clicks the "OK" button in the "My Working Schedule" page
    And The following cases exist:
      | Case | Title     |
      | 17   | Hammurabi |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    When The user clicks the "Start Work" button in the "View Active Case" page
    Then The "Outside working hours" confirmation dialog is opened
    And The user clicks the "Yes" button in the "Outside working hours" confirmation dialog
    And The following case details are shown in the "View Active Case" page:
      | Working On This Case |
      | Administrator        |

  Scenario: User can stop work when not during working hours
    Given The user is logged in as Administrator
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    And The user clicks the "My Working Schedule" menu item in the "Configuration" section
    And The user enters the following details in the "My Working Schedule" page:
      | Workday starts at           | and ends at                 |
      | "Current time" + 30 minutes | "Current time" + 60 minutes |
    And The user clicks the "OK" button in the "My Working Schedule" page
    And The following cases exist:
      | Case | Title     | Working On This Case |
      | 17   | Hammurabi | Administrator        |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    When The user clicks the "Stop Work" button in the "View Active Case" page
    Then The following case details are shown in the "View Active Case" page:
      | Working On This Case |
      |                      |

