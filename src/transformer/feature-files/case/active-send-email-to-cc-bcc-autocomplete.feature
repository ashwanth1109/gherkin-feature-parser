@NotAutomated
@JIRA-Key-MANUSCRIPT-30628
@Case
Feature: Case - Active - Send Email - TO CC BCC - Autocomplete

  Scenario Outline: All emails are in autocomplete for "<Field>" field when sending emails from cases
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name          | Email                        | Account Type  |
      | Ticker Assignee    | admin@ticket-assignee.com    | Normal        |
      | Ticket Factory     | admin@ticket-factory.com     | Administrator |
      | Ticker Implementor | admin@ticket-implementor.com | Virtual       |
    And The following community users exist:
      | Full Name      | Email              |
      | Alesha Muromec | alesha@nowhere.com |
    And The following cases exist:
      | ID | Title | Correspondent |
      | 17 | 12345 | a@arf.com     |
    And The user sends the following email message to FogBugz:
      | From                 | To                                | Subject     |
      | testA@devfactory.com | cases@"instance name".fogbugz.com | I am batman |
    And The following cases exist:
      | ID | Title | Status |
      | 17 | 12345 | Active |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Mail" button in the top panel in the "View Active Case" page
    When The user enters the following email details in the "Edit Active Case" page:
      | <Field> |
      | a       |
    Then The following suggestions are listed for the "<Field>" dropdown in the "Edit Active Case" page:
      | "Ticker Assignee" "admin@ticket-assignee.com"        |
      | "Ticket Factory" "admin@ticket-factory.com"          |
      | "Ticker Implementor"  "admin@ticket-implementor.com" |
      | "Alesha Muromec"  "alesha@nowhere.com"               |
      | "a@arf.com"                                          |
      | "testA@devfactory.com"                               |
    Examples:
      | Field |
      | To    |
      | CC    |
      | BCC   |
