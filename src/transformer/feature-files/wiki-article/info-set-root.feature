@NotAutomated
@JIRA-Key-MANUSCRIPT-31266
@WikiArticle
Feature: Wiki article - Info - Set Root

  Scenario: Administrator user can set a Wiki article as a root article using the "Info" button
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
    When The user clicks the "Info" button in the "View Wiki Article" page
    And The user is redirected to the "Wiki Article Info" page
    And The user clicks the "Set Root" button in the "Wiki Article Info" page
    And The "Set Root Wiki Article" dialog is opened
    And The following dialog details are shown in the "Set Root Wiki Article" dialog:
      | Message                                                     |
      | Are you sure you want to set Article-1 as the root article? |
    And The user clicks the "OK" button in the "Set Root Wiki Article" dialog
    Then The "Set Root Wiki Article" dialog is closed
    And The user is redirected to the "Root Wiki Article Info" page
    And The user clicks the "View Wiki" tab in the "Root Wiki Article Info" page
    And The "View Wiki" page is shown
    And The following wiki article links are listed in the "Hierarchy" tree view in the "View Wiki" page:
      | Link Text    |
      | Wiki-A       |
      | Root Article |
