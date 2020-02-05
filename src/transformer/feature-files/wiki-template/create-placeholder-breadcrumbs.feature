@NotAutomated
@JIRA-Key-MANUSCRIPT-31180
@WikiTemplate
Feature: Wiki template - Create - Placeholder - breadcrumbs

  Background:
    Given The user is logged in as Administrator
    # NOTE: The placeholder will not be rendered correctly without wrapping it with <div class="wiki-page-breadcrumbs">.
    And The following wiki templates exist:
      | Template                | wiki-page-content div HTML                             |
      | Rendering Wiki template | <div class="wiki-page-breadcrumbs">$breadcrumbs$</div> |
    And The following wikis exist:
      | ID | Name           |
      | 1  | Rendering Wiki |

  Scenario: User can view rendered Wiki article: "$breadcrumbs$" placeholder: Path in the wiki tree to the current page: Root level
    Given The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Rendering Wiki" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    When The user clicks the "Rendering Wiki" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    Then The "View Wiki Article" page is shown
    And The following wiki article details are shown in the "View Wiki Article" page:
      | Page Title   | Description |
      | Root Article |             |
    And The following description links are listed in the "Description" field in the "View Wiki Article" page:
      | Link Text | Destination Wiki Article ID |

  Scenario: User can view rendered Wiki article: "$breadcrumbs$" placeholder: Path in the wiki tree to the current page: One level
    Given The following wiki articles exist:
      | ID | Page Title    | Description                     | Wiki ID | Parent Wiki Article ID |
      | W2 | First Article | This is the first wiki article! | 1       |                        |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Rendering Wiki" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    When The user clicks the "First Article" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    Then The "View Wiki Article" page is shown
    And The following wiki article details are shown in the "View Wiki Article" page:
      | Page Title    | Description        |
      | First Article | First wiki article |
    And The following description links are listed in the "Description" field in the "View Wiki Article" page:
      | Link Text     | Destination Wiki Article ID |
      | First Article | W2                          |

  Scenario: User can view rendered Wiki article: "$breadcrumbs$" placeholder: Path in the wiki tree to the current page: Two levels
    Given The following wiki articles exist:
      | ID | Page Title                | Description                         | Wiki ID | Parent Wiki Article ID |
      | W2 | First Article             | This is the first wiki article!     | 1       |                        |
      | W3 | First Article Sub-article | This is the first wiki sub-article! | 1       | W2                     |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Rendering Wiki" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    When The user clicks the "First Article" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The user clicks the "First Article Sub-article" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    Then The "View Wiki Article" page is shown
    And The following wiki article details are shown in the "View Wiki Article" page:
      | Page Title                | Description                            |
      | First Article Sub-article | First wiki article » Sub first article |
    And The following description links are listed in the "Description" field in the "View Wiki Article" page:
      | Link Text                 | Destination Wiki Article ID |
      | First Article             | W2                          |
      | First Article Sub-article | W3                          |
