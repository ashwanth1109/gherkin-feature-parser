@NotAutomated
@JIRA-Key-MANUSCRIPT-31204
@WikiTemplate
Feature: Wiki template - Render Wiki article - Placeholder - rsslink, rss_link

  Scenario Outline: User can view rendered Wiki article: "$rsslink$", "$rss_link$" placeholders: Link to RSS feed of current article's changes
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
    And The following wiki article action links are listed in the "Description" field in the "View Wiki Article" page:
      | Icon    | Link Text | Destination Wiki Article ID | Destination Wiki Article Page |
      | rss.gif |           | W2                          | Wiki Article RSS Feed         |
    Examples:
      | Placeholder |
      | $rsslink$   |
      | $rss_link$  |
