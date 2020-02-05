@NotAutomated
@JIRA-Key-MANUSCRIPT-31679
@Email
Feature: Email - Send - Rich Text Mode - Paragraph format

  Scenario Outline: User can format text as a paragraph when sending emails
    Given The user is logged in as Administrator
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user selects the text in the "Description" field in the "New Email" page
    And The user selects the "<Paragraph Format Option>" option from the "Paragraph Format" dropdown in the "New Email" page
    And The user clicks the "Source" button in the "New Email" page
    Then The following details are shown in the "New Email" page:
      | Description                |
      | <Paragraph Format Content> |
    Examples:
      | Paragraph Format Option | Paragraph Format Content |
      | Normal                  | <p>Lorem ipsum</p>       |
      | Heading 1               | <h1>Lorem ipsum</h1>     |
      | Heading 2               | <h2>Lorem ipsum</h2>     |
      | Heading 3               | <h3>Lorem ipsum</h3>     |
      | Formatted               | <pre>Lorem ipsum</pre>   |
