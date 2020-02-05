@NotAutomated
@JIRA-Key-MANUSCRIPT-32854
@WikiArticle
Feature: Wiki Article - Edit - Insert - Link - Wiki article links are searched by title

  Background:
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Name   |
      | Wiki-A |
    And The following wiki articles exist:
      | ID | Page Title   | Description        | Wiki   |
      | W2 | Article-2    | New Wiki Article   | Wiki-A |
      | W3 | Introduction | New Wiki Article-2 | Wiki-A |
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

  Scenario:Administrator user can search wiki article using wiki article title when adding link in a wiki article
    When The user enters the link details in the "Insert Link" editor dialog:
      | Target       |
      | Introduction |
    Then The following suggestions are listed in the "Title Suggestions" input text droplist in the "Insert Link" editor dialog in the "Edit Wiki Article" page:
      | Target           |
      | W3: Introduction |

  Scenario: Administrator user can select wiki article link from title suggestion list when adding link in a wiki article : Search done using wiki article title
    Given The user enters the link details in the "Insert Link" editor dialog:
      | Target       |
      | Introduction |
    And The following suggestions are listed in the "Title Suggestions" input text droplist in the "Insert Link" editor dialog in the "Edit Wiki Article" page:
      | Name             |
      | W3: Introduction |
    When The user selects the "W3: Introduction" suggestion in the "Title Suggestions" input text droplist in the "Insert Link" editor dialog
    Then The following link details are shown in the "Insert Link" editor dialog:
      | Target           | Text |
      | W3: Introduction |      |

  Scenario: The wiki article link is successfully added to wiki article description when user selects the link from the suggestion list: Search done using wiki article title
    Given The user enters the link details in the "Insert Link" editor dialog:
      | Target       |
      | Introduction |
    And The following suggestions are listed in the "Title Suggestions" input text droplist in the "Insert Link" editor dialog in the "Edit Wiki Article" page:
      | Name             |
      | W3: Introduction |
    And The user selects the "W3: Introduction" suggestion in the "Title Suggestions" input text droplist in the "Insert Link" editor dialog
    And The following link details are shown in the "Insert Link" editor dialog:
      | Target           | Text |
      | W3: Introduction |      |
    And The user clicks the "OK" button in the "Insert Link" editor dialog
    And The "Insert Link" editor dialog is closed
    When The user clicks the "Save" button in the "Edit Wiki Article" page
    And The "Save Wiki Article" dialog is opened
    And The user clicks the "Save and View" button in the "Save Wiki Article" dialog
    Then The "Save Wiki Article" dialog is closed
    And The user is redirected to the "View Wiki Article" page
    And The following description links are listed in the "Description" field in the "View Wiki Article" page:
      | Link Text    | Destination Wiki |
      | Introduction | W3               |
    And The following wiki article details are shown in the "View Wiki Article" page:
    # TODO: Right after this step: Check the description and the description links right `in the "Description" rich text editor in the "Edit Wiki Article" page`.
      | Page Title | Description                   | Wiki   | Link Text    |
      | Article-2  | Introduction New Wiki Article | Wiki-A | Introduction |
