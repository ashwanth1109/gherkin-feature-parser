@NotAutomated
@JIRA-Key-MANUSCRIPT-31695
@Email
Feature: Email - Send - Mandatory Fields - To

  Scenario: User can create a case when sending emails when To field is specified
    Given The user is logged in as Administrator
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | To                   | Subject         |
      | testA@devfactory.com | Test Send Email |
    And The user clicks the "Send" button in the "New Email" page
    And The following case details are shown in the "View Active Case" page:
      | ID | Title           |
      | 17 | Test Send Email |
    And The user receives the "Test Send Email" email message in the "testA@devfactory.com" email address
