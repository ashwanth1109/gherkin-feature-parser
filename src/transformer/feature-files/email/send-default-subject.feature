@NotAutomated
@JIRA-Key-MANUSCRIPT-31710
@Email
Feature: Email - Send - Default Subject

  Scenario: User can send an email with attachment
    Given The user is logged in as Administrator
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | To                   |
      | testA@devfactory.com |
    And The user clicks the "Send" button in the "New Email" page
    Then The "View Active Case" page is shown
    And The following case details are shown in the "View Active Case" page:
      | ID | Title      | Category |
      | 17 | (Untitled) | Inquiry  |
    And The user receives the "Test Send Email" email message in the "testA@devfactory.com" email address
    And The "(Untitled)" email title contains the "(Untitled)" subject
