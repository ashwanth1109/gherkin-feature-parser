@NotAutomated
@JIRA-Key-MANUSCRIPT-31270
@WikiArticle
Feature: Wiki article - Info - Cannot Move Root Article

  Scenario: Administrator user cannot move root article of a wiki using the "Info" button
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Wiki   |
      | Wiki-A |
      | Wiki-B |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Wiki-A" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    And The user clicks the "Root Article-1" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The "View Root Wiki Article" page is shown in the "View Wiki" page
    When The user clicks the "Info" button in the "View Root Wiki Article" page
    And The "Root Wiki Article Info" page is shown
    And The user clicks the "Move" button in the "Wiki Root Article Info" page
    And The following dialog details are shown in the "Move Root Wiki Article" dialog:
       | Message                               |
       | You can't move a wiki's root article. |
    And The user clicks the "OK" button in the "Move Root Wiki Article" dialog
    Then The "Move Root Wiki Article" dialog is closed
    And The user clicks the "View Wiki" tab in the "Root Wiki Article Info" page
    And The "View Wiki" page is shown
    And The following wiki article links are listed in the "Hierarchy" tree view in the "View Wiki" page:
       | Link Text |
       | Wiki-A    |
    And The "View Root Wiki Article" page is shown in the "View Wiki" page
    And The following wiki article details are shown in the "View Wiki" page:
       | Page Title     | Description            |
       | Root Article-1 | This is a Root Article |
