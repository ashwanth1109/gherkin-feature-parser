@NotAutomated
@JIRA-Key-MANUSCRIPT-31201
@WikiTemplate
Feature: Wiki template - Render Wiki article - Placeholder - wiki_page_collection_links, wikipagecollectionlinks

  Scenario Outline: User can view rendered Wiki article: "$wiki_page_collection_links$", "$wikipagecollectionlinks$" placeholders: Unordered list of links to wiki views that contain page collections
    Given The user is logged in as Administrator
    And The following wiki templates exist:
      | Template                | wiki-page-content div HTML |
      | Rendering Wiki template | <Placeholder>              |
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
    # NOTE: Verify the URL: It must be the page of the particular wiki.
    And The following wiki page collection links are listed in the unordered "Page Collections" list in the "Description" field in the "View Wiki Article" page:
      | Icon                           | Link Text        | Destination Wiki | Destination Wiki Page          |
      | wiki-navigation-tags.png       | Title Index      | Rendering Wiki   | Wiki Title Index               |
      | wiki-navigation-recent.png     | Recently Changed | Rendering Wiki   | Recently Changed Wiki Articles |
      | wiki-navigation-hierarchy.png  | Page Hierarchy   | Rendering Wiki   | Wiki Page Hierarchy            |
      | wiki-navigation-incomplete.png | Incomplete       | Rendering Wiki   | Incomplete Wiki Articles       |
    Examples:
      | Placeholder                  |
      | $wiki_page_collection_links$ |
      | $wikipagecollectionlinks$    |
