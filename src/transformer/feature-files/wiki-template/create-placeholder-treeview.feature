@NotAutomated
@JIRA-Key-MANUSCRIPT-31188
@WikiTemplate
Feature: Wiki template - Create - Placeholder - treeview

  Scenario: User can view rendered Wiki article: "$treeview$" placeholder: Tree of wiki pages closely related to currently displayed page
    Given The user is logged in as Administrator
    And The following wiki templates exist:
      | Template                | wiki-page-content div HTML |
      | Rendering Wiki template | $treeview$                 |
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
    # TODO: MANUSCRIPT-31250: Wiki Article - Sidebar - Page Hierarchy: Verify in the same way or just verify the control visibility (`<div id="id-family-tree-wrapper">`).
    And The "Hierarchy" tree view is shown in the "Description" field in the "View Wiki Article" page
