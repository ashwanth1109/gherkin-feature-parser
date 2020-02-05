@NotAutomated
@JIRA-Key-MANUSCRIPT-31630
@Case
Feature: Case - Schedule - Automatic stop work when not during working hours

  Scenario: Enable automatic stop work based on working hours
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title              | Status | Working on This Case | Estimate: elapsed |
      | 17   | New Case to handle | Active | Administrator        | 2 hours           |
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    When The user clicks the "My Working Schedule" menu item in the sidebar menu
    And The user enters the following details in the "My Working Schedule" page:
      | Workday starts at | and ends at                 | Automatically start and stop work |
      | "Current time"    | "Current time" + 30 minutes | true                              |
    And The user clicks the "OK" button in the "My Working Schedule" page
    And 1 hour has passed
    And The user searches for the "17" search string by using the search box
    Then The following case details are shown in the "View Active Case" page:
      | Case | Title              | Status | Working on This Case | Estimate: elapsed |
      | 17   | New Case to handle | Active | Administrator        | 2.50 hours        |
