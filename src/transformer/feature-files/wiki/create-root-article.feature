@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-31228
@Wiki
Feature: Wiki - Create - Root Article

  Scenario: The created Wiki contains the root article
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Name                    |
      | FogBugz 5k Rewrite Wiki |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Gear" icon in the "Wiki" section in the sidebar
    And The "Manage Wikis" page is shown
    When The user clicks the "Wiki" link for the "FogBugz 5k Rewrite Wiki" wiki row in the "Wikis" table in the "Manage Wikis" page
    Then The "View Wiki" page is shown
    And The following wiki article links are listed in the "Hierarchy" tree view in the "View Wiki" page:
      | Link Text               |
      | FogBugz 5k Rewrite Wiki |
    And The "View Root Wiki Article" page is shown in the "View Wiki" page
    And The following wiki article details are shown in the "View Root Wiki Article" page:
      | Page Title    | Tags | Description                                                                                                                |
      | Root Article. |      | This is the root article for your wiki. It will be the starting page for all users who select the wiki from the main menu. |
