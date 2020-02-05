@NotAutomated
@JIRA-Key-MANUSCRIPT-31701
@Email
Feature: Email - Send - Body Content

  Scenario: User can send an email with body
    Given The user is logged in as Administrator
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | To                   | Subject         | Description |
      | testA@devfactory.com | Test Send Email | Lorem ipsum |
    And The user clicks the "Send" button in the "New Email" page
    Then The user receives the "Test Send Email" email message in the "testA@devfactory.com" email address
    And The "Test Send Email" email message has the "Lorem ipsum" text in the email body
