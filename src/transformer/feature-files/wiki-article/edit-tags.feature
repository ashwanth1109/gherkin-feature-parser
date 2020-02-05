@NotAutomated
@JIRA-Key-MANUSCRIPT-31271
@WikiArticle
Feature: WikiArticle - Edit - Tags

  Scenario Outline: Administrator user can add tags to a wiki article using "Edit" button
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Wiki   |
      | Wiki-A |
    And The following wiki articles exist:
      | Page Title | Description      | Wiki   |
      | Article-1  | New Wiki Article | Wiki-A |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Wiki-A" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    And The user clicks the "View Article-1" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The "View Wiki Article" page is shown
    When The user clicks the "Edit" button in the "View Wiki Article" page
    And The "Edit Root Article" page is shown
    And The user enters the wiki article details in the "Edit Wiki Article" page:
      | Tags         |
      | <Input Tags> |
    And The user clicks the "Save" button in the "Edit Wiki Article" page
    And The "Save Wiki Article" dialog is opened
    And The user clicks the "Save and View" button in the "Save Wiki Article" dialog
    Then The "Save Wiki Article" dialog is closed
    And The user is redirected to the "View Wiki Article" page
    And The following wiki article details are shown in the "View Wiki Article" page:
      | Page Title | Description  | Wiki   | Tags            |
      | Article-1  | Hello World. | Wiki-A | <Expected Tags> |
    Examples:
      | Input Tags  | Expected Tags |
      | WikiArticle | WikiArticle   |
      | c,b,a       | c, b, a       |
