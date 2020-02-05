@NotAutomated
@JIRA-Key-MANUSCRIPT-31672
@Email
Feature: Email - Send - Subcase and Parent Case at the same time error

  Scenario Outline: User cannot send a mail with a subcase and parent case assigned to the same case
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title |
      | 17 | 12345 |
    When The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | Parent Case | Subcases  |
      | 17: 12345   | 17: 12345 |
    And The user clicks the "<Send>" button in the "New Email" page
    Then The "A case can't be set as both the parent and child of a case." error message is shown in the "New Email" page
    Examples:
      | Send         |
      | Send         |
      | Send & Close |

