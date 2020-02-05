@NotAutomated
@JIRA-Key-MANUSCRIPT-31693
@Email
Feature: Email - Send - Parent Case

  Scenario: User can create a case with a parent case when sending emails
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title |
      | 17 | 12345 |
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | Parent Case | To                   |
      | 17: 12345   | testA@devfactory.com |
    And The user clicks the "Send" button in the "New Email" page
    And The following case details are shown in the "View Active Case" page:
      | ID | Parent Case |
      | 18 | 17: 12345   |
