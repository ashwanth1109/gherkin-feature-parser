@NotAutomated
@JIRA-Key-MANUSCRIPT-32852
@WikiArticle
Feature: Wiki Article - Edit - Insert - Link - Wiki article link search by title returns results when typed at least 4 letters

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

  Scenario: Wiki article link search by title returns results when at least 4 letters are entered
    When The user enters the link details in the "Insert Link" editor dialog:
      | Target |
      | Intr   |
    Then The following suggestions are listed in the "Title Suggestions" input text droplist in the "Insert Link" editor dialog in the "Edit Wiki Article" page:
      | Target           |
      | W3: Introduction |

  Scenario Outline: Wiki article link search by title returns no results when at less than 4 letters are entered
    When The user enters the link details in the "Insert Link" editor dialog:
      | Target         |
      | <Link Details> |
    Then The following suggestions are listed in the "Title Suggestions" input text droplist in the "Insert Link" editor dialog in the "Edit Wiki Article" page:
      | Target |
      |        |
    Examples:
      | Link Details |
      | I            |
      | In           |
      | Int          |
