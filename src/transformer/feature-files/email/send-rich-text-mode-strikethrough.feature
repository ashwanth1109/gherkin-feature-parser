@NotAutomated
@JIRA-Key-MANUSCRIPT-31682
@Email
Feature: Email - Send - Rich Text Mode - Strikethrough

  Scenario: User can format text as strikethrough when sending emails
    Given The user is logged in as Administrator
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user selects the text in the "Description" field in the "New Email" page
    And The user clicks the "Strikethrough" button in the "New Email" page
    And The user clicks the "Source" button in the "New Email" page
    Then The following details are shown in the "New Email" page:
      | Description               |
      | <p><s>Lorem ipsum</s></p> |
