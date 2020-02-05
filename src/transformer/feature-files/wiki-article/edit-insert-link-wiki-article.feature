@NotAutomated
@JIRA-Key-MANUSCRIPT-32850
@WikiArticle
Feature: Wiki Article - Edit - Insert - Link - Wiki Article

  Background:
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Name   |
      | Wiki-A |
    And The following wiki articles exist:
     | ID | Page Title | Description       | Wiki   |
     | W2 | Article-1  | New Wiki Article  | Wiki-A |
     | W3 | Article-2  | New Wiki Article-2| Wiki-A |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Wiki-A" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    And The user clicks the "View Article-1" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The "View Wiki Article" page is shown
    And The user clicks the "Edit" button in the "View Wiki Article" page
    And The user is redirected to the "Edit Wiki Article" page

  Scenario: Administrator user can insert a wiki article link in a wiki article using "Edit" button: Cursor position is unchanged in the "Description" rich text editor in the "Edit Wiki Article" page
    When The user clicks the "Insert" dropdown menu in the editor toolbar in the "Edit Wiki Article" page
    And The user selects the "Link" menu item in the "Insert" dropdown menu in the editor toolbar in the "Edit Wiki Article" page
    And The "Insert Link" editor dialog is opened
    And The user enters the link details in the "Insert Link" editor dialog:
      | Target | Text           |
      | W3     | View Article-2 |
    And The user clicks the "OK" button in the "Insert Link" editor dialog
    # TODO: Right after this step: Check the description and the description links right `in the "Description" rich text editor in the "Edit Wiki Article" page`.
    And The "Insert Link" editor dialog is closed
    And The user clicks the "Save" button in the "Edit Wiki Article" page
    And The "Save Wiki Article" dialog is opened
    And The user clicks the "Save and View" button in the "Save Wiki Article" dialog
    Then The "Save Wiki Article" dialog is closed
    And The user is redirected to the "View Wiki Article" page
    And The following description links are listed in the "Description" field in the "View Wiki Article" page:
      | Link Text      | Destination Wiki |
      | View Article-2 | W3               |
    And The following wiki article details are shown in the "View Wiki Article" page:
      | Page Title | Description                     | Wiki   | Link Text      |
      | Article-1  | View Article-2 New Wiki Article | Wiki-A | View Article-2 |
    And The user clicks the "View Article-2" link in the "View Wiki Article" page
    And The following wiki article details are shown in the "View Wiki Article" page:
      | Page Title | Description        | Wiki   |
      | Article-2  | New Wiki Article-2 | Wiki-A |

  Scenario: Administrator user can insert a wiki article link in a wiki article using "Edit" button: Cursor at the end of the "Description" rich text editor in the "Edit Wiki Article" page
    And The user places the cursor at the end of the "Description" rich text editor in the "Edit Wiki Article" page
    When The user clicks the "Insert" dropdown menu in the editor toolbar in the "Edit Wiki Article" page
    And The user selects the "Link" menu item in the "Insert" dropdown menu in the editor toolbar in the "Edit Wiki Article" page
    And The "Insert Link" editor dialog is opened
    And The user enters the link details in the "Insert Link" editor dialog:
      | Target | Text           |
      | W3     | View Article-2 |
    And The user clicks the "OK" button in the "Insert Link" editor dialog
    # TODO: Right after this step: Check the description and the description links right `in the "Description" rich text editor in the "Edit Wiki Article" page`.
    And The "Insert Link" editor dialog is closed
    And The user clicks the "Save" button in the "Edit Wiki Article" page
    And The "Save Wiki Article" dialog is opened
    And The user clicks the "Save and View" button in the "Save Wiki Article" dialog
    Then The "Save Wiki Article" dialog is closed
    And The user is redirected to the "View Wiki Article" page
    And The following description links are listed in the "Description" field in the "View Wiki Article" page:
      | Link Text      | Destination Wiki |
      | View Article-2 | W3               |
    And The following wiki article details are shown in the "View Wiki Article" page:
      | Page Title | Description                     | Wiki   | Link Text      |
      | Article-1  | New Wiki Article View Article-2 | Wiki-A | View Article-2 |
    And The user clicks the "View Article-2" link in the "View Wiki Article" page
    And The following wiki article details are shown in the "View Wiki Article" page:
      | Page Title | Description        | Wiki   |
      | Article-2  | New Wiki Article-2 | Wiki-A |
