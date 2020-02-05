@NotAutomated
@JIRA-Key-MANUSCRIPT-31707
@Email
Feature: Email - Send - Correspondent

  Scenario: User can send an email with attachment
    Given The user is logged in as Administrator
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | To                   | Subject         |
      | testA@devfactory.com | Test Send Email |
    And The user clicks the "Send" button in the "New Email" page
    Then The "View Active Case" page is shown
    And The following case details are shown in the "View Active Case" page:
      | ID | Title           | Category | Correspondent        |
      | 17 | Test Send Email | Inquiry  | test@Adevfactory.com |
