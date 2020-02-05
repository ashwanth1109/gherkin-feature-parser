@NotAutomated
@JIRA-Key-MANUSCRIPT-31673
@Email
Feature: Email - Send - Attachment

  Scenario: User can send an email with attachment
    Given The user is logged in as Administrator
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | To                   | Subject         | Attachment |
      | testA@devfactory.com | Test Send Email | foo.txt    |
    And The user clicks the "Send" button in the "New Email" page
    Then The "View Active Case" page is shown
    And The following case details are shown in the "View Active Case" page:
      | ID | Title           | Category |
      | 17 | Test Send Email | Inquiry  |
    And The following case events are listed in the "View Active Case" page in the following order:
      | Type       | Content | User          |
      | Emailed By | foo.txt | Administrator |
    And The user receives the "Test Send Email" email message in the "testA@devfactory.com" email address
    And The "Test Send Email" email message contains the "foo.txt" attachment

  Scenario: User can send and close an email with attachment
    Given The user is logged in as Administrator
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | To                   | Subject         | Attachment |
      | testA@devfactory.com | Test Send Email | foo.txt    |
    And The user clicks the "Send & Close" button in the "New Email" page
    And The user searches for the "17" search string by using the search box
    Then The "View Closed Case" page is shown
    And The following case details are shown in the "View Closed Case" page:
      | ID | Title           | Category |
      | 17 | Test Send Email | Inquiry  |
    And The following case events are listed in the "View Closed Case" page in the following order:
      | Type       | Content | User          |
      | Emailed By | foo.txt | Administrator |
    And The user receives the "Test Send Email" email message in the "testA@devfactory.com" email address
    And The "Test Send Email" email message contains the "foo.txt" attachment
