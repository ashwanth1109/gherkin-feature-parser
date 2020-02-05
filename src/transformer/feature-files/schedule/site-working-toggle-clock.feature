@NotAutomated
@JIRA-Key-MANUSCRIPT-29992
@Schedule
Feature: Site Working Schedule - Toggle Clock

  Scenario: Enable automatic stop work based on working hours
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title              | Status | Working on This Case | Estimate: elapsed |
      | 17   | New Case to handle | Active | Administrator        | 2 hours           |
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    When The user clicks the "Site Working Schedule" menu item in the sidebar menu
    And The user enters the following details in the "Site Working Schedule" page:
      | Workday starts at | and ends at                 | Automatically start and stop work |
      | "Current time"    | "Current time" + 30 minutes | true                              |
    And The user clicks the "OK" button in the "Site Working Schedule" page
    And 1 hour has passed
    And The user searches for the "17" search string by using the search box
    Then The following case details are shown in the "View Active Case" page:
      | Case | Title              | Status | Working on This Case | Estimate: elapsed |
      | 17   | New Case to handle | Active | Administrator        | 2.50 hours        |

  Scenario: Enable automatic stop work based on lunch hour
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title              | Status | Working on This Case | Estimate: elapsed |
      | 17   | New Case to handle | Active | Administrator        | 2 hours           |
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    When The user clicks the "Site Working Schedule" menu item in the sidebar menu
    And The user enters the following details in the "Site Working Schedule" page:
      | Lunch starts at | and lasts for | Automatically start and stop work |
      | "Current time"  | 30 m          | true                              |
    And The user clicks the "OK" button in the "Site Working Schedule" page
    And 1 hour has passed
    And The user searches for the "17" search string by using the search box
    Then The following case details are shown in the "View Active Case" page:
      | Case | Title              | Status | Working on This Case | Estimate: elapsed |
      | 17   | New Case to handle | Active | Administrator        | 2.50 hours        |

  Scenario: Enable automatic start work based on working hours
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title              | Status | Working on This Case | Estimate: elapsed |
      | 17   | New Case to handle | Active | Administrator        | 2 hours           |
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    When The user clicks the "Site Working Schedule" menu item in the sidebar menu
    And The user enters the following details in the "Site Working Schedule" page:
      | Workday starts at           | and ends at              | Automatically start and stop work |
      | "Current time" + 30 minutes | "Current time" + 2 hours | true                              |
    And The user clicks the "OK" button in the "Site Working Schedule" page
    And 1 hour has passed
    And The user searches for the "17" search string by using the search box
    Then The following case details are shown in the "View Active Case" page:
      | Case | Title              | Status | Working on This Case | Estimate: elapsed |
      | 17   | New Case to handle | Active | Administrator        | 2.5 hours         |

  Scenario: Enable automatic start work based on lunch hour
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title              | Status | Start Work | Working on This Case | Estimate: elapsed |
      | 17   | New Case to handle | Active | false      | Administrator        | 2 hours           |
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    When The user clicks the "Site Working Schedule" menu item in the sidebar menu
    And The user enters the following details in the "Site Working Schedule" page:
      | Lunch starts at | and lasts for | Automatically start and stop work |
      | "Current time"  | 30 m          | true                              |
    And The user clicks the "OK" button in the "Site Working Schedule" page
    And 1 hour has passed
    And The user searches for the "17" search string by using the search box
    Then The following case details are shown in the "View Active Case" page:
      | Case | Title              | Status | Working on This Case | Estimate: elapsed |
      | 17   | New Case to handle | Active | Administrator        | 2.5 hours         |



