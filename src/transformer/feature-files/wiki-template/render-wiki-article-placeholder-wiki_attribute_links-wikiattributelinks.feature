@NotAutomated
@JIRA-Key-MANUSCRIPT-31199
@WikiTemplate
Feature: Wiki template - Render Wiki article - Placeholder - wiki_attribute_links, wikiattributelinks

  # NOTE: Original help note says "(ex: tags/attachments)."
  # NOTE: But, according to the codebase, the `WikiViewType.Attribute` enumeration constant is used only by the "Tags" wiki view.
  Scenario Outline: User can view rendered Wiki article: "$wiki_attribute_links$", "$wikiattributelinks$" placeholders: Unordered list of links to all of wiki views that contain attributes of pages
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
    # NOTE: Verify the URL: It must be the "Wiki Tags" page of the "Rendering Wiki" wiki.
    And The following wiki attribute links are listed in the unordered "Attributes" list in the "Description" field in the "View Wiki Article" page:
      | Icon                     | Link Text | Destination Wiki | Destination Wiki Page |
      | wiki-navigation-tags.png | Tags      | Rendering Wiki   | Wiki Tags             |
    Examples:
      | Placeholder            |
      | $wiki_attribute_links$ |
      | $wikiattributelinks$   |
