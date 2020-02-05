@NotAutomated
@JIRA-Key-MANUSCRIPT-29841
@User
Feature: User - Edit - Legacy - Escalation Report

  Background:
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    And The user clicks the "Legacy Settings" link in the "User Options" page


  Scenario: Escalation Report - Do not send report
    Given The user enters the user options details in the "User Options" page:
      | Escalation Report  |
      | Do not send report |
    And The user clicks the "OK" button in the "User Options" page
    And The following cases exist:
      | ID | Title   | Due (Day)  | Due (Time) |
      | 16 | Expired | 10/31/2019 | 11:30 PM   |
    When 24 hours have passed
    Then The user does not receive the "Escalation Report" email

  Scenario: Escalation Report - Send report daily
    Given The user enters the user options details in the "User Options" page:
      | Escalation Report  |
      | Do not send report |
    And The user clicks the "OK" button in the "User Options" page
    And The following cases exist:
      | ID | Title   | Due (Day)  | Due (Time) |
      | 16 | Expired | 10/31/2019 | 11:30 PM   |
    When 24 hours have passed
    Then The user receives the "Escalation Report" email
    And The "Escalation Report" email contains the "Expired" case

  Scenario: Escalation Report - Send report daily only if cases are due
    Given The user enters the user options details in the "User Options" page:
      | Escalation Report  |
      | Do not send report |
    And The user clicks the "OK" button in the "User Options" page
    And The user clicks the "New Case" button
    And The user enters the case details in the "New Case" page:
      | Title            | Description           | Due (Day)     | Due (Time)     |
      | Expired Tomorrow | Nobody will ever know | "Current Day" | "Current Time" |
    And The user clicks the "Open" button in the "New Case" page
    When 24 hours have passed
    Then The user receives the "Escalation Report" email
    And The "Escalation Report" email contains the "Expired Tomorrow" case
