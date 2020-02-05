@NotAutomated
@JIRA-Key-MANUSCRIPT-32856
@WikiArticle
Feature: Wiki Article - Edit - Insert - Link - Case links are searched by ID

  Background:
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Name   |
      | Wiki-A |
    And The following wiki articles exist:
      | Page Title | Description      | Wiki   |
      | Article-2  | New Wiki Article | Wiki-A |
    And The following cases exist:
      | ID | Title        |
      | 17 | Introduction |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Wiki-A" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    And The user clicks the "View Article-2" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The "View Wiki Article" page is shown
    And The user clicks the "Edit" button in the "View Wiki Article" page
    And The user is redirected to the "Edit Wiki Article" page
    And The user clicks the "Insert" dropdown menu in the editor toolbar in the "Edit Wiki Article" page
    And The user selects the "Link" menu item in the "Insert" dropdown menu in the editor toolbar in the "Edit Wiki Article" page
    And The "Insert Link" editor dialog is opened

  Scenario: Administrator user can search cases using case ID when adding case link in a wiki article
    When The user enters the link details in the "Insert Link" editor dialog:
      | Target |
      | 17     |
    Then The following suggestions are listed in the "Title Suggestions" input text droplist in the "Insert Link" editor dialog in the "Edit Wiki Article" page:
      | Name             |
      | 17: Introduction |

  Scenario: Administrator user can select case from title suggestion list when adding case link to wiki article : Search done using case ID
    Given The user enters the link details in the "Insert Link" editor dialog:
      | Target |
      | 17     |
    And The following suggestions are listed in the "Title Suggestions" input text droplist in the "Insert Link" editor dialog in the "Edit Wiki Article" page:
      | Name             |
      | 17: Introduction |
    When The user selects the "17: Introduction" suggestion in the "Title Suggestions" input text droplist in the "Insert Link" editor dialog
    Then The following link details are shown in the "Insert Link" editor dialog:
      | Target           | Text |
      | 17: Introduction |      |

  Scenario: The case link is successfully added to the wiki article when user selects the case link from the suggestion list: Search done using case ID
    Given The user enters the link details in the "Insert Link" editor dialog:
      | Target |
      | 17     |
    And The following suggestions are listed in the "Title Suggestions" input text droplist in the "Insert Link" editor dialog in the "Edit Wiki Article" page:
      | Name             |
      | 17: Introduction |
    And The user selects the "17: Introduction" suggestion in the "Title Suggestions" input text droplist in the "Insert Link" editor dialog
    And The following link details are shown in the "Insert Link" editor dialog:
      | Target           | Text |
      | 17: Introduction |      |
    And The user clicks the "OK" button in the "Insert Link" editor dialog
    And The "Insert Link" editor dialog is closed
    When The user clicks the "Save" button in the "Edit Wiki Article" page
    And The "Save Wiki Article" dialog is opened
    And The user clicks the "Save and View" button in the "Save Wiki Article" dialog
    Then The "Save Wiki Article" dialog is closed
    And The user is redirected to the "View Wiki Article" page
    And The following description links are listed in the "Description" field in the "View Wiki Article" page:
      | Link Text | Destination Case ID |
      | Case 17   | 17                  |
    And The following wiki article details are shown in the "View Wiki Article" page:
    # TODO: Right after this step: Check the description and the description links right `in the "Description" rich text editor in the "Edit Wiki Article" page`.
      | Page Title | Description              | Wiki   | Link Text |
      | Article-2  | Case 17 New Wiki Article | Wiki-A | Case 17   |
