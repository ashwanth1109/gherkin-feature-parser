@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-31182
@WikiTemplate
Feature: Wiki template - Render Wiki article - Placeholder - headline

  Scenario: User can view rendered Wiki article: "$headline$" placeholder: Headline of current article
    Given The user is logged in as Administrator
    And The following wiki templates exist:
      | Template                | wiki-page-content div HTML |
      | Rendering Wiki template | $headline$                 |
    And The following wikis exist:
      | Name           |
      | Rendering Wiki |
    And The following wiki articles exist:
      | ID | Page Title    | Description                     | Wiki           |
      | W2 | First Article | This is the first wiki article! | Rendering Wiki |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Rendering Wiki" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    When The user clicks the "First Article" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    Then The "View Wiki Article" page is shown
    And The following wiki article details are shown in the "View Wiki Article" page:
      | Page Title    | Description   |
      | First Article | First Article |
