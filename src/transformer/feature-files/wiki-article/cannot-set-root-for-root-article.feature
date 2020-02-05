@NotAutomated
@JIRA-Key-MANUSCRIPT-31267
@WikiArticle
Feature: Wiki article - Info - Cannot Set Root for Root Article

  Scenario: Administrator user cannot set root for a root article of a Wiki using the "Info" button
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Wiki   |
      | Wiki-A |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Wiki-A" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    And The user clicks the "Wiki-A" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The "View Root Wiki Article" page is shown in the "View Wiki" page
    When The user clicks the "Info" button in the "View Root Wiki Article" page
    And The "Root Wiki Article Info" page is shown
    And The user clicks the "Set Root" button in the "Wiki Root Article Info" page
    And The following dialog details are shown in the "Set Root Wiki Article" dialog:
       | Message                                                  |
       | This wiki page is already the root article for the wiki. |
    And The user clicks the "OK" button in the "Set Root Wiki Article" dialog
    Then The "Set Root Wiki Article" dialog is closed
    And The user clicks the "View Wiki" tab in the "Root Wiki Article Info" page
    And The "View Wiki" page is shown
    And The following wiki article links are listed in the "Hierarchy" tree view in the "View Wiki" page:
       | Link Text |
       | Wiki-A    |
    And The "View Root Wiki Article" page is shown in the "View Wiki" page
    And The following wiki article details are shown in the "View Root Wiki Article" page:
       | Page Title   | Description                                                                                                                |
       | Root Article | This is the root article for your wiki. It will be the starting page for all users who select the wiki from the main menu. |
