@NotAutomated
@JIRA-Key-MANUSCRIPT-31265
@WikiArticle
Feature: Wiki article - Info - Cannot Delete Root Article

  Scenario: Administrator user cannot delete root Wiki article of a wiki using the "Info" button
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
    And The user clicks the "Delete" button in the "Wiki Root Article Info" page
    And The following dialog details are shown in the "Delete Root Wiki Article" dialog:
       | Message                                 |
       | You can't delete a wiki's root article. |
    And The user clicks the "OK" button in the "Delete Root Wiki Article" dialog
    Then The "Delete Root Wiki Article" dialog is closed
    And The user clicks the "View Wiki" tab in the "Root Wiki Article Info" page
    And The "View Wiki" page is shown
    And The following wiki article links are listed in the "Hierarchy" tree view in the "View Wiki" page:
       | Link Text |
       | Wiki-A    |
    And The "View Root Wiki Article" page is shown in the "View Wiki" page
    And The following wiki article details are shown in the "View Root Wiki Article" page:
       | Page Title    | Description                                                                                                                |
       | Root Article. | This is the root article for your wiki. It will be the starting page for all users who select the wiki from the main menu. |
