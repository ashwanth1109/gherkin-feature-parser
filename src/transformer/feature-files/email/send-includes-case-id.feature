@NotAutomated
@JIRA-Key-MANUSCRIPT-31708
@Email
Feature: Email - Send - Email includes Case ID

  Scenario: User can send an email with attachment
    Given The user is logged in as Administrator
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | To                   | Subject         |
      | testA@devfactory.com | Test Send Email |
    And The user clicks the "Send" button in the "New Email" page
    Then The user receives the "Test Send Email" email message in the "testA@devfactory.com" email address
    And The "Test Send Email" email title contains the "(Case 17)" case id
