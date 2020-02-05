@NotAutomated
@JIRA-Key-MANUSCRIPT-31178
@WikiTemplate
Feature: Wiki template - Create - Placeholder - search

  Scenario: User can view rendered Wiki article: "$search$" placeholder: Search box that lets users search the current wiki
    Given The user is logged in as Administrator
    And The following wiki templates exist:
      | Template                | wiki-page-content div HTML |
      | Rendering Wiki template | $search$                   |
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
    # TODO: Separate story: Cover the search functionality.
    And The "Search This Wiki" form is shown in the "View Wiki" page
