@NotAutomated
@JIRA-Key-MANUSCRIPT-31683
@Email
Feature: Email - Send - Rich Text Mode - Underline

  Scenario: User can format text as underline when sending emails
    Given The user is logged in as Administrator
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user selects the text in the "Description" field in the "New Email" page
    And The user clicks the "Underline" button in the "New Email" page
    And The user clicks the "Source" button in the "New Email" page
    Then The following details are shown in the "New Email" page:
      | Description               |
      | <p><u>Lorem ipsum</u></p> |
