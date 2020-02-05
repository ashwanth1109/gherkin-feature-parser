@NotAutomated
@JIRA-Key-MANUSCRIPT-30633
@Case
Feature: Case - Active - Send Email - Attachments

  Scenario Outline: User can send an email for a case with an attachment
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title | Status |
      | 17 | 12345 | Active |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Mail" button in the <Location> panel in the "View Active Case" page
    When The user enters the following details in the "Edit Active Case" page:
      | To                   | Subject         | Description           | Attachment |
      | testA@devfactory.com | Test Send Email | Testing sending email | foo.txt    |
    And The user clicks the "Send" button in the "Edit Active Case" page
    And The following case details are shown in the "View Active Case" page:
      | ID | Status | Title | Correspondent        | Attachments |
      | 17 | Active | 12345 | testA@devfactory.com | foo.txt     |
    And The following case events are listed in the "View Active Case" page in the following order:
      | Type       |
      | Emailed By |
    And The following details are shown in the "Emailed By" event in the "View Active Case" page:
      | To                   | Subject         | Body                  | Attachment |
      | testA@devfactory.com | Test Send Email | Testing sending email | foo.txt    |
    And The user receives the "Test Send Email" email message in the "testA@devfactory.com" email address
    And The "Test Send Email" email message contains the "foo.txt" attachment
    Examples:
      | Location |
      | top      |
      | bottom   |
