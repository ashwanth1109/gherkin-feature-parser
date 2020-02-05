@NotAutomated
@JIRA-Key-MANUSCRIPT-31181
@WikiTemplate
Feature: Wiki template - Create - Placeholder - article_commands, articlecommands

  Scenario Outline: User can view rendered Wiki article: "$article_commands$", "$articlecommands$" placeholders: Unordered list of actions that can be performed on wiki page
    Given The user is logged in as Administrator
    And The following wiki templates exist:
      | Template                | wiki-page-content div HTML |
      | Rendering Wiki template | <Placeholder>              |
    And The following wikis exist:
      | ID | Name           |
      | 1  | Rendering Wiki |
    And The following wiki articles exist:
      | ID | Page Title    | Description                     | Wiki ID |
      | W2 | First Article | This is the first wiki article! | 1       |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Rendering Wiki" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    When The user clicks the "First Article" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    Then The "View Wiki Article" page is shown
    # TODO: Separate story: Could be extracted, so that here it would be enough to state that the unordered "Page Controls" list is shown.
    And The following wiki article action links are listed in the unordered "Page Controls" list in the "Description" field in the "View Wiki Article" page:
      | Icon        | Link Text | Destination Wiki Article ID | Destination Wiki Article Page | Action      |
      | article.png | View      | W2                          | View Wiki Article             |             |
      | edit.png    | Edit      | W2                          | Edit Wiki Article             |             |
      | info.png    | Info      | W2                          | Wiki Article Info             |             |
      |             | Subscribe | W2                          |                               | Subscribe   |
      | rss.gif     |           | W2                          | Wiki Article RSS Feed         |             |
      | clear.gif   |           | W2                          |                               | Toggle star |
    Examples:
      | Placeholder        |
      | $article_commands$ |
      | $articlecommands$  |
