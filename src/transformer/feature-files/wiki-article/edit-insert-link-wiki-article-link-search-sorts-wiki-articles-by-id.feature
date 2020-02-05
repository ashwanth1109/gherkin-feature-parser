@NotAutomated
@JIRA-Key-MANUSCRIPT-32855
@WikiArticle
Feature: Wiki Article - Edit - Insert - Link - Wiki article link search sorts wiki articles by ID

  Scenario: The wiki article link suggestion list is sorted based on the wiki article ID when inserting link in a wiki article
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Name   |
      | Wiki-A |
    And The following wiki articles exist:
      | ID  | Page Title         | Wiki   |
      | W2  | Introduction       | Wiki-A |
      | W3  | New Article-3      | Wiki-A |
      | W4  | Good Article-4     | Wiki-A |
      | W5  | Bad Article-5      | Wiki-A |
      | W6  | Edit New Article-6 | Wiki-A |
      | W7  | Delete Article-7   | Wiki-A |
      | W8  | This Article-8     | Wiki-A |
      | W9  | That Article-9     | Wiki-A |
      | W10 | Root Article-10    | Wiki-A |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Wiki-A" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    And The user clicks the "View Introduction" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The "View Wiki Article" page is shown
    And The user clicks the "Edit" button in the "View Wiki Article" page
    And The user is redirected to the "Edit Wiki Article" page
    And The user clicks the "Insert" dropdown menu in the editor toolbar in the "Edit Wiki Article" page
    And The user selects the "Link" menu item in the "Insert" dropdown menu in the editor toolbar in the "Edit Wiki Article" page
    And The "Insert Link" editor dialog is opened
    When The user enters the link details in the "Insert Link" editor dialog:
      | Target  |
      | Article |
    Then The following suggestions are listed in the "Title Suggestions" input text droplist in the "Insert Link" editor dialog in the "Edit Wiki Article" page:
      | Target                 |
      | W3: New Article-3      |
      | W4: Good Article-4     |
      | W5: Bad Article-5      |
      | W6: Edit New Article-6 |
      | W7: Delete Article-7   |
      | W8: This Article-8     |
      | W9: That Article-9     |
      | W10: Root Article-10   |
