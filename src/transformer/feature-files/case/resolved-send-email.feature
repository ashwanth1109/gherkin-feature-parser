@NotAutomated
@JIRA-Key-MANUSCRIPT-30634
@Case
Feature: Case - Resolved - Send Email

  Scenario Outline: User can send an email from a resolved case
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title | Status   |
      | 17 | 12345 | Resolved |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Resolved Case" page
    And The user clicks the "Mail" button in the <Location> panel in the "View Resolved Case" page
    When The user enters the following details in the "View Resolved Case" page:
      | To                   | Subject         | Description           |
      | testA@devfactory.com | Test Send Email | Testing sending email |
    And The user clicks the "Send" button in the "View Resolved Case" page
    And The following case details are shown in the "View Active Case" page:
      | ID | Status   | Title | Correspondent        |
      | 17 | Resolved | 12345 | testA@devfactory.com |
    And The following case events are listed in the "View Resolved Case" page in the following order:
      | Type       |
      | Emailed By |
    And The following details are shown in the "Emailed By" event in the "View Resolved Case" page:
      | To                   | Subject         | Body                  |
      | testA@devfactory.com | Test Send Email | Testing sending email |
    And The user receives the "Test Send Email" email message in the "testA@devfactory.com" email address
    Examples:
      | Location |
      | top      |
      | bottom   |
