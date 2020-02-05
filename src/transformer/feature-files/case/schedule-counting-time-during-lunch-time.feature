@NotAutomated
@JIRA-Key-MANUSCRIPT-31634
@Case
Feature: Case - Schedule - Counting time during lunch time

  Scenario: Enable automatic start work based on lunch hour
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title              | Status | Start Work | Working on This Case | Estimate: elapsed |
      | 17   | New Case to handle | Active | false      | Administrator        | 2 hours           |
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    When The user clicks the "My Working Schedule" menu item in the sidebar menu
    And The user enters the following details in the "My Working Schedule" page:
      | Lunch starts at | and lasts for | Automatically start and stop work |
      | "Current time"  | 30 m          | true                              |
    And The user clicks the "OK" button in the "My Working Schedule" page
    And 1 hour has passed
    And The user searches for the "17" search string by using the search box
    Then The following case details are shown in the "View Active Case" page:
      | Case | Title              | Status | Working on This Case | Estimate: elapsed |
      | 17   | New Case to handle | Active | Administrator        | 2.5 hours         |

