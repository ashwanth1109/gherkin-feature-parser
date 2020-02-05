@NotAutomated
@JIRA-Key-MANUSCRIPT-31705
@Email
Feature: Email - Send - Plain Text Mode

  Scenario: User can enter description using plain text mode when sending an email
    Given The user is logged in as Administrator
    When The user clicks the "New Email" button in the sidebar
    And The user clicks the "Plain text" link in the "New Email" page
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    Then The following details are shown in the "New Email" page:
      | Description |
      | Lorem ipsum |

  Scenario Outline: User can use snippets in plain text mode when sending emails
    Given The user is logged in as Administrator
    And The following snippets exist:
      | Type                   | Can Edit | Can Delete | Snippet | Replaced          | Notes |
      | Personal               | true     | true       | ppwd    | personal password |       |
      | Snippets For Everybody | true     | true       | pls     | please            |       |
    When The user clicks the "New Email" button in the sidebar
    And The user clicks the "Plain text" link in the "New Email" page
    And The user enters the following details in the "New Email" page:
      | Description |
      | <Snippet>`  |
    Then The following details are shown in the "New Email" page:
      | Description   |
      | <Replacement> |
    Examples:
      | Snippet | Replacement       |
      | ppwd    | personal password |
      | pls     | please            |
