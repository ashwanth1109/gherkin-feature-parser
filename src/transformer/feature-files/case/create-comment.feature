@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29124
@Case
Feature: Case - Create comment

  Scenario: User can create a comment for a case
    Given The user is logged in as Normal User
    And The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Case" page
    And The user enters the case details in the "New Case" page:
      | Title             | Description           |
      | Superman identity | Nobody will ever know |
    When The user clicks the "Open" button in the "New Case" page
    Then The user is redirected to the "View Active Case" page
    And The following case events are listed in the "View Active Case" page in the following order:
      | Type      | Content               |
      | Opened By | Nobody will ever know |

  Scenario: User can create an additional comment for a case
    Given The user is logged in as Normal User
    And The following cases exist:
      | ID | Title             | Description           |
      | 16 | Superman identity | Nobody will ever know |
    And The user searches for the "16" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button in the "View Active Case" page
    And The user is redirected to the "Edit Active Case" page
    When The user enters the case details in the "Edit Active Case" page:
      | Description      |
      | Yet another idea |
    And The user clicks the "Save" button in the "Edit Active Case" page
    Then The user is redirected to the "View Active Case" page
    And The following case events are listed in the "View Active Case" page in the following order:
      | Type      | Content               |
      | Edited by | Yet another idea      |
      | Opened By | Nobody will ever know |
