@NotAutomated
@JIRA-Key-MANUSCRIPT-31692
@Email
Feature: Email - Send - Rich Text Mode - Source

  Scenario: User can see the source code of the rich text when sending emails
    Given The user is logged in as Administrator
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user clicks the "Source" button in the "New Email" page
    Then The following details are shown in the "New Email" page:
      | Description        |
      | <p>Lorem ipsum</p> |
