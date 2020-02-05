@NotAutomated
@JIRA-Key-MANUSCRIPT-31185
@WikiTemplate
Feature: Wiki template - Create - Placeholder - tags_horizontal, tags

  Scenario Outline: User can view rendered Wiki article: "$tags_horizontal$", "$tags$" placeholders: List of tags that have been applied to current article
    Given The user is logged in as Administrator
    And The following wiki templates exist:
      | Template                | wiki-page-content div HTML |
      | Rendering Wiki template | <Placeholder>              |
    And The following wikis exist:
      | ID | Name           |
      | 1  | Rendering Wiki |
    And The following wiki articles exist:
      | ID | Page Title    | Description                     | Tags                | Wiki ID |
      | W2 | First Article | This is the first wiki article! | a-tag, c-tag, b-tag | 1       |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Rendering Wiki" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    When The user clicks the "First Article" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    Then The "View Wiki Article" page is shown
    And The following wiki article details are shown in the "View Wiki Article" page:
      | Page Title    | Description         |
      | First Article | a-tag, b-tag, c-tag |
    And The following description links are listed in the "Description" field in the "View Wiki Article" page:
      | Link Text | Destination Wiki ID | Destination Wiki Page | Tag Name |
      | a-tag     | 1                   | Search Wiki Tag       | a-tag    |
      | b-tag     | 1                   | Search Wiki Tag       | b-tag    |
      | c-tag     | 1                   | Search Wiki Tag       | c-tag    |
    Examples:
      | Placeholder       |
      | $tags_horizontal$ |
      | $tags$            |
