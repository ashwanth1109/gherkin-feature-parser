@NotAutomated
@JIRA-Key-MANUSCRIPT-31699
@Email
Feature: Email - Send - Rich Text Mode - Snippets - Public

  Scenario Outline: User can use public snippets in rich text mode when sending emails
    Given The user is logged in as Administrator
    And The following snippets exist:
      | Type                   | Can Edit | Can Delete | Snippet | Replaced | Notes |
      | Snippets For Everybody | true     | true       | pwd     | password |       |
      | Snippets For Everybody | true     | true       | ls      | lets see |       |
      | Snippets For Everybody | true     | true       | dr      | doctor   |       |
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | Description |
      | <Snippet>`  |
    Then The following details are shown in the "New Email" page:
      | Description   |
      | <Replacement> |
    Examples:
      | Snippet | Replacement |
      | pwd     | password    |
      | ls      | lets see    |
      | dr      | doctor      |
