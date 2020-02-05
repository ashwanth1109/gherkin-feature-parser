@NotAutomated
@JIRA-Key-MANUSCRIPT-29821
@Snippet
Feature: Snippet - Personal - Create

  Scenario: Administrator can create a personal snippet by clicking on the "+" button next to the "Personal Snippets" title
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Snippets" menu item in the sidebar menu
    And The "Snippets" page is shown
    And The user clicks the "+" button right to the "Personal Snippets" title in the "Snippets" page
    And The "Create a new snippet" dialog is opened
    When The user enters the snippet details in the "Create a new snippet" dialog:
      | Snippet   | Replacement Text             | Notes       |
      | Snippet/1 | Replacement Text - Snippet/1 | Snippet - 1 |
    And The user clicks the "OK" button in the "Create a new snippet" dialog
    Then The "Snippets" page is shown
    And The following snippets are listed in the "Personal Snippets" section in the "Snippets" page in the following order:
      | Can Edit | Can Delete | Snippet   | Replaced                     | Notes       |
      | true     | true       | Snippet/1 | Replacement Text - Snippet/1 | Snippet - 1 |

  Scenario: Administrator can create a personal snippet by clicking on the "Create New Snippet" link
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Snippets" menu item in the sidebar menu
    And The "Snippets" page is shown
    And The user clicks the "Create New Snippet" link in the "Personal Snippets" section in the "Snippets" page
    And The "Create a new snippet" dialog is opened
    When The user enters the snippet details in the "Create a new snippet" dialog:
      | Snippet   | Replacement Text             | Notes       |
      | Snippet/1 | Replacement Text - Snippet/1 | Snippet - 1 |
    And The user clicks the "OK" button in the "Create a new snippet" dialog
    Then The "Snippets" page is shown
    And The following snippets are listed in the "Personal Snippets" section in the "Snippets" page in the following order:
      | Can Edit | Can Delete | Snippet   | Replaced                     | Notes       |
      | true     | true       | Snippet/1 | Replacement Text - Snippet/1 | Snippet - 1 |

  Scenario: Administrator can create a personal snippet by clicking on the "+" left to the "Create New Snippet" link
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Snippets" menu item in the sidebar menu
    And The "Snippets" page is shown
    And The user clicks the "+" button left to the "Create New Snippet" link in the "Personal Snippets" section in the "Snippets" page
    And The "Create a new snippet" dialog is opened
    When The user enters the snippet details in the "Create a new snippet" dialog:
      | Snippet   | Replacement Text             | Notes       |
      | Snippet/1 | Replacement Text - Snippet/1 | Snippet - 1 |
    And The user clicks the "OK" button in the "Create a new snippet" dialog
    Then The "Snippets" page is shown
    And The following snippets are listed in the "Personal Snippets" section in the "Snippets" page in the following order:
      | Can Edit | Can Delete | Snippet   | Replaced                     | Notes       |
      | true     | true       | Snippet/1 | Replacement Text - Snippet/1 | Snippet - 1 |
