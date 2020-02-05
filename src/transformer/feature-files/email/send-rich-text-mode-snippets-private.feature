@NotAutomated
@JIRA-Key-MANUSCRIPT-31697
@Email
Feature: Email - Send - Rich Text Mode - Snippets - Private

  Scenario Outline: User can use private snippets in rich text mode when sending emails
    Given The user is logged in as Administrator
    And The following snippets exist:
      | Type     | Can Edit | Can Delete | Snippet | Replaced          | Notes |
      | Personal | true     | true       | ppwd    | personal password |       |
      | Personal | true     | true       | pls     | personal lets see |       |
      | Personal | true     | true       | pdr     | personal doctor   |       |
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | Description |
      | <Snippet>`  |
    Then The following details are shown in the "New Email" page:
      | Description   |
      | <Replacement> |
    Examples:
      | Snippet | Replacement       |
      | ppwd    | personal password |
      | pls     | personal lets see |
      | pdr     | personal doctor   |
