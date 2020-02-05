@NotAutomated
@JIRA-Key-MANUSCRIPT-31193
@WikiTemplate
Feature: Wiki template - Render Wiki article - Placeholder - incoming_links

  Scenario: User can view rendered Wiki article: "$incoming_links$" placeholder: List of incoming links from other wiki articles and cases
    Given The user is logged in as Administrator
    And The following wiki templates exist:
      | Template                | wiki-page-content div HTML |
      | Rendering Wiki template | $incoming_links$           |
    And The following wikis exist:
      | Name           |
      | Rendering Wiki |
    And The following wiki articles exist:
      | ID | Page Title     | Description                      | Wiki           |
      | W2 | First Article  | This is the first wiki article!  | Rendering Wiki |
      | W3 | Second Article | This is the second wiki article! | Rendering Wiki |
      | W4 | Third Article  | This is the third wiki article!  | Rendering Wiki |
      | W5 | Fourth Article | This is the fourth wiki article! | Rendering Wiki |
    And The following cases exist:
      | ID | Title       | Description                              |
      | 17 | First Case  | Please, see the first wiki article (W2). |
      | 18 | Second Case | Please, see the first wiki article (W2). |
      | 19 | Third Case  | Please, see the first wiki article (W2). |
    And The following wiki article description links exist:
      | Wiki Article ID | Link Text                    | Destination Wiki Article ID |
      | W3              | View the first wiki article. | W2                          |
      | W4              | View the first wiki article. | W2                          |
      | W5              | View the first wiki article. | W2                          |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Rendering Wiki" wiki link in the sidebar menu
    And The "View Wiki" page is shown
    When The user clicks the "First Article" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    Then The "View Wiki Article" page is shown
    # NOTE: The order by link types: wiki articles, the cases.
    # NOTE: The order within a given link type: ascending by ID.
    And The following wiki article details are shown in the "View Wiki Article" page:
      | Page Title    | Description                                                                                              |
      | First Article | Second Article Third Article Fourth Article Case 17: First Case Case 18: Second Case Case 19: Third Case |
    And The following description links are listed in the "Description" field in the "View Wiki Article" page:
      | Link Text            | Destination Wiki Article ID | Destination Case ID |
      | Second Article       | W3                          |                     |
      | Third Article        | W4                          |                     |
      | Fourth Article       | W5                          |                     |
      | Case 17: First Case  |                             | 17                  |
      | Case 18: Second Case |                             | 18                  |
      | Case 19: Third Case  |                             | 19                  |
