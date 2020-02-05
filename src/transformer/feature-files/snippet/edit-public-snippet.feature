@NotAutomated
@JIRA-Key-MMANUSCRIPT-29773
@Snippet
Feature: Snippet - Public - Edit

  Scenario: Administrator can edit public snippet
    Given The user is logged in as Administrator
    And The following snippets exist:
        | Type                   | Can Edit | Can Delete | Snippet   | Replaced                     | Notes       |
        | Snippets For Everybody | true     | true       | Snippet/1 | Replacement Text - Snippet/1 | Snippet - 1 |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Snippets" menu item in the sidebar menu
    And The "Snippets" page is shown
    And The user clicks the "Edit" button for the "Snippet/1" snippet in the "Snippets For Everybody" section in the "Snippets" page
    And The "Edit snippet" dialog is opened
    When The user enters the snippet details in the "Edit snippet" dialog:
        | Snippet     | Replacement Text               | Notes         |
        | Snippet/one | Replacement Text - Snippet/one | Snippet - one |
    And The user clicks the "OK" button in the "Edit snippet" dialog
    Then The "Snippets" page is shown
    And The following snippets are listed in the "Snippets For Everybody" section in the "Snippets" page in the following order:
        | Can Edit | Can Delete | Snippet     | Replaced                       | Notes         |
        | true     | true       | Snippet/one | Replacement Text - Snippet/one | Snippet - one |