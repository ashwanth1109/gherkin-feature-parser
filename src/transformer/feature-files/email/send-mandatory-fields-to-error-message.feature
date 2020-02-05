@NotAutomated
@JIRA-Key-MANUSCRIPT-31702
@Email
Feature: Email - Send - Mandatory Fields - To - Error Message

  Scenario: User can send an email with body
    Given The user is logged in as Administrator
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | Subject         | Description |
      | Test Send Email | Lorem ipsum |
    And The user clicks the "Send" button in the "New Email" page
    Then The "Please enter a valid email address in the To: field of the message" error message is shown in the "New Email" page
