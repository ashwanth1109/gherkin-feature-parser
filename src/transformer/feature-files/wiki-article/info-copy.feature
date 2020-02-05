@NotAutomated
@JIRA-Key-MANUSCRIPT-31263
@WikiArticle
Feature: Wiki article - Info - Copy

  Scenario: Administrator user can create a copy of an existing Wiki article using the "Info" button
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Wiki   |
      | Wiki-A |
      | Wiki-B |
    And The following wiki articles exist:
      | Page Title | Description      | Wiki   |
      | Article-1  | New Wiki Article | Wiki-A |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Wiki-A" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    And The user clicks the "View Article-1" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The "View Wiki Article" page is shown
    When The user clicks the "Info" button in the "View Wiki Article" page
    And The user is redirected to the "Wiki Article Info" page
    And The user clicks the "Copy" button in the "Wiki Article Info" page
    And The "Copy Wiki Article" dialog is opened
    And The following dialog details are shown in the "Copy Wiki Article" dialog:
      | Message                                                               |
      | Choose the wiki to which you would like to copy the article Article-1 |
    And The user enters the wiki article details in the "Copy Wiki Article" dialog:
      | Wiki   |
      | Wiki-B |
    And The user clicks the "OK" button in the "Copy Wiki Article" dialog
    Then The following dialog details are shown in the "Copy Wiki Article" dialog:
      | Message                                                   | Link              |
      | This article was successfully copied to Wiki-B: Article-1 | Wiki-B: Article-1 |
    And The user clicks the "Wiki-B: Article-1" wiki article link in the "Copy Wiki Article" dialog
    And The "View Wiki Article" page is shown in the "View Wiki" page
    And The following wiki article links are listed in the "Hierarchy" tree view in the "View Wiki" page:
      | Link Text |
      | Wiki-B    |
      | Article-1 |
