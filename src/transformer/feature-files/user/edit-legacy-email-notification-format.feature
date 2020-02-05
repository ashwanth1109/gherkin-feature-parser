@NotAutomated
@JIRA-Key-MANUSCRIPT-29836
@User
Feature: User - Edit - Legacy - Email Notification Format

  Background:
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    And The user clicks the "Legacy Settings" link in the "User Options" page

  Scenario: User - Edit - Legacy - Email Notification Format - Plain Text
    Given The user enters the user options details in the "User Options" page:
      | Email Notification Format |
      | Plain Text                |
    And The user clicks the "OK" button in the "User Options" page
    And The following users exist:
      | Full Name  | Email                    | Account Type | Status | Password |
      | Test UserA | testusera@manuscript.com | Normal       | Active | 123123   |
    When The user logs out
    And The user is redirected to the "Login" page
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email                    | Password |
      | testusera@manuscript.com | 123123   |
    And The user clicks the "Login" button in the "Login" form in the "Login" page
    And The user clicks the "New Case" button in the sidebar
    And The user enters the case details in the "New Case" page:
      | ID | Assigned To   |
      | 16 | Administrator |
    And The user clicks the "Open" button in the "New Case" page
    Then The "Administrator" user receives a notification email with plain text body

  Scenario: User - Edit - Legacy - Email Notification Format - Formatted (HTML)
    Given The user enters the user options details in the "User Options" page:
      | Email Notification Format |
      | Formatted (HTML)          |
    And The user clicks the "OK" button in the "User Options" page
    And The following users exist:
      | Full Name  | Email                    | Account Type | Status | Password |
      | Test UserA | testusera@manuscript.com | Normal       | Active | 123123   |
    When The user logs out
    And The user is redirected to the "Login" page
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email                    | Password |
      | testusera@manuscript.com | 123123   |
    And The user clicks the "Login" button in the "Login" form in the "Login" page
    And The user clicks the "New Case" button in the sidebar
    And The user enters the case details in the "New Case" page:
      | ID | Assigned To   |
      | 16 | Administrator |
    And The user clicks the "Open" button in the "New Case" page
    Then The "Administrator" user receives a notification email with formatted html text body
