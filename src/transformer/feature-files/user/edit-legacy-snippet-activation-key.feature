@NotAutomated
@JIRA-Key-MANUSCRIPT-29845
@User
Feature: User - Edit - Legacy - Snippet Activation Key

  Scenario Outline: Snippet Activation Key - <Key>
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    And The user clicks the "Legacy Settings" link in the "User Options" page
    And The user enters the user options details in the "User Options" page:
      | Snippet Activation Key |
      | <Key>                  |
    And The user clicks the "OK" button in the "User Options" page
    And The following cases exist:
      | ID | Title   |
      | 16 | Expired |
    And The following snippets exist:
      | Type                   | Can Edit | Can Delete | Snippet   | Replaced                     | Notes       |
      | Snippets For Everybody | true     | true       | Snippet/1 | Replacement Text - Snippet/1 | Snippet - 1 |
    And The user searches for the "16" search string by using the search box
    And The user is redirected to the "View Active Case" page
    When The user clicks the "Edit" button in the "View Active Case" page
    And The user enters the case details in the "Edit Active Case" page:
      | Description    |
      | Snippet/1<Key> |
    And The user clicks the "Save" button in the "Edit Active Case" page
    Then The following case details are shown in the "View Active Case" page:
      | Description                  |
      | Replacement Text - Snippet/1 |
    Examples:
      | Key |
      | `   |
      | \   |
      | <   |
      | >   |
      | #   |
      | ~   |
      | *   |
      | ^   |
