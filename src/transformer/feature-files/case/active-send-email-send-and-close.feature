@NotAutomated
@JIRA-Key-MANUSCRIPT-30631
@Case
Feature: Case - Active - Send Email - Send and Close

  Scenario Outline: User can send an email and close a case
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title | Status |
      | 17 | 12345 | Active |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Mail" button in the <Location> panel in the "View Active Case" page
    When The user enters the following details in the "Edit Active Case" page:
      | To                   | Subject         | Description           |
      | testA@devfactory.com | Test Send Email | Testing sending email |
    And The user clicks the "Send & Close" button in the "Edit Active Case" page
    And The user searches for the "17" search string by using the search box
    And The "View Closed Case" page is shown
    And The following case details are shown in the "View Closed Case" page:
      | ID | Status | Title | Correspondent        |
      | 17 | Active | 12345 | testA@devfactory.com |
    And The following case events are listed in the "View Closed Case" page in the following order:
      | Type       |
      | Emailed By |
    And The following details are shown in the "Emailed By" event in the "View Closed Case" page:
      | To                   | Subject         | Body                  |
      | testA@devfactory.com | Test Send Email | Testing sending email |
    And The user receives the "Test Send Email" email message in the "testA@devfactory.com" email address
    Examples:
      | Location |
      | top      |
      | bottom   |
