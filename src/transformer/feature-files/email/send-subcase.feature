@NotAutomated
@JIRA-Key-MANUSCRIPT-31694
@Email
Feature: Email - Send - Subcase

  Scenario: User can create a case with a subcase when sending emails
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title |
      | 17 | 12345 |
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | Subcases  | To                   |
      | 17: 12345 | testA@devfactory.com |
    And The user clicks the "Send" button in the "New Email" page
    And The following case details are shown in the "View Active Case" page:
      | ID | Subcases  |
      | 18 | 17: 12345 |
