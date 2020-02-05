@NotAutomated
@JIRA-Key-MANUSCRIPT-31194
@WikiTemplate
Feature: Wiki template - Render Wiki article - Placeholder - outgoing_links

  Scenario: User can view rendered Wiki article: "$outgoing_links$" placeholder: List of outgoing links to other wiki articles and cases
    Given The user is logged in as Administrator
    And The following wiki templates exist:
      | Template                | wiki-page-content div HTML |
      | Rendering Wiki template | $outgoing_links$           |
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
      | ID | Title       | Description              |
      | 17 | First Case  | This is the first case.  |
      | 18 | Second Case | This is the second case. |
      | 19 | Third Case  | This is the third case.  |
    And The following wiki article description links exist:
      | Wiki Article ID | Link Text                     | Destination Wiki Article ID | Destination Case ID |
      | W2              | View the first case.          |                             | 17                  |
      | W2              | View the second case.         |                             | 18                  |
      | W2              | View the third case.          |                             | 19                  |
      | W2              | View the second wiki article. | W3                          |                     |
      | W2              | View the third wiki article.  | W4                          |                     |
      | W2              | View the fourth wiki article. | W5                          |                     |
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
