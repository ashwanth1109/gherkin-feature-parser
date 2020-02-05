@NotAutomated
@JIRA-Key-MANUSCRIPT-31684
@Email
Feature: Email - Send - Rich Text Mode - Clear formatting

  Scenario: User can clear text formatting when sending emails
    Given The user is logged in as Administrator
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user selects the text in the "Description" field in the "New Email" page
    And The user clicks the "Bold" button in the "New Email" page
    And The user clicks the "Italic" button in the "New Email" page
    And The user clicks the "Underline" button in the "New Email" page
    And The user clicks the "Strikethrough" button in the "New Email" page
    And The user clicks the "Code" button in the "New Email" page
    And The user clicks the "Remove Format" button in the "New Email" page
    And The user clicks the "Source" button in the "New Email" page
    Then The following details are shown in the "New Email" page:
      | Description        |
      | <p>Lorem ipsum</p> |
