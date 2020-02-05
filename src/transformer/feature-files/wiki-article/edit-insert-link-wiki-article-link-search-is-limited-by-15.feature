@NotAutomated
@JIRA-Key-MANUSCRIPT-32857
@WikiArticle
Feature: Wiki Article - Edit - Insert - Link - Wiki article link search is limited by 15

  Scenario: The wiki article link suggestion list is limited to 15 when inserting link in a wiki article
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Name   |
      | Wiki-A |
    And The following wiki articles exist:
      | ID  | Page Title      | Wiki   |
      | W2  | Article-2       | Wiki-A |
      | W3  | New Article-3   | Wiki-A |
      | W4  | Article-4       | Wiki-A |
      | W5  | Article-5       | Wiki-A |
      | W6  | New Article-6   | Wiki-A |
      | W7  | Article-7       | Wiki-A |
      | W8  | Article-8       | Wiki-A |
      | W9  | This Article-9  | Wiki-A |
      | W10 | Article-10      | Wiki-A |
      | W11 | Article-11      | Wiki-A |
      | W12 | Article-12      | Wiki-A |
      | W13 | The Article-13  | Wiki-A |
      | W14 | Article-14      | Wiki-A |
      | W15 | Good Article-15 | Wiki-A |
      | W16 | Article-16      | Wiki-A |
      | W17 | Article-17      | Wiki-A |
      | W18 | Article-18      | Wiki-A |
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
    When The user enters the link details in the "Insert Link" editor dialog:
      | Target  |
      | Article |
    Then The following suggestions are listed in the "Title Suggestions" input text droplist in the "Insert Link" editor dialog in the "Edit Wiki Article" page:
      | Target               |
      | W2: Article-2        |
      | W3: New Article-3    |
      | W4: Article-4        |
      | W5: Article-5        |
      | W6: New Article-6    |
      | W7: Article-7        |
      | W8: Article-8        |
      | W9: This Article-9   |
      | W10: Article-10      |
      | W11: Article-11      |
      | W12: Article-12      |
      | W13: The Article-13  |
      | W14: Article-14      |
      | W15: Good Article-15 |
      | W16: Article-16      |
