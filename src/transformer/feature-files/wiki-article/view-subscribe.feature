@NotAutomated
@JIRA-Key-MANUSCRIPT-31277
@WikiArticle
Feature: Wiki article - View - Subscribe

  Scenario: Administrator user can subscribe to an existing wiki article using the "View" button
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
    When The user clicks the "View" button in the "View Wiki Article" page
    And The user is redirected to the "View Wiki Article" page
    And The user clicks the "Subscribe" button in the "View Wiki Article" page
    Then The user is redirected to the "View Wiki Article" page
    And The following wiki article details are shown in the "View Wiki Article" page:
      | Page Title | Description      | Can Unsubscribe | Can Subscribe |
      | Article-1  | New Wiki Article | true            | false         |
    And The user clicks the "Info" button in the "View Wiki Article" page
    And The user is redirected to the "Wiki Article Info" page
    And The following wiki article details are shown in the "Wiki Article Info" page:
      | Page Title | Description      | Can Unsubscribe | Can Subscribe |
      | Article-1  | New Wiki Article | true            | false         |
