@NotAutomated
@JIRA-Key-MANUSCRIPT-31202
@WikiTemplate
Feature: Wiki template - Render Wiki article - Placeholder - subscribelink, subscribe_link

  # TODO: Verify that the subscription itself actually works?

  Scenario Outline: User can view rendered Wiki article: "$subscribelink$", "$subscribe_link$" placeholders: Link to subscribe from changes to current article, including description: Initial
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
    And The following wiki article details are shown in the "View Wiki Article" page:
      | Page Title    | Description                                           |
      | First Article | Subscribe to receive email when this article changes. |
    And The following description links are listed in the "Description" field in the "View Wiki Article" page:
      | Link Text | Destination Wiki Article ID | Action    |
      | Subscribe | W2                          | Subscribe |
    Examples:
      | Placeholder      |
      | $subscribelink$  |
      | $subscribe_link$ |

  Scenario Outline: User can view rendered Wiki article: "$subscribelink$", "$subscribe_link$" placeholders: Link to unsubscribe from changes to current article, including description: Subscribed
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
    And The user clicks the "First Article" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The "View Wiki Article" page is shown
    When The user clicks the "Subscribe" description link in the "Description" field in the "View Wiki Article" page
    Then The following wiki article details are shown in the "View Wiki Article" page:
      | Page Title    | Description |
      | First Article | Unsubscribe |
    And The following description links are listed in the "Description" field in the "View Wiki Article" page:
      | Link Text   | Destination Wiki Article ID | Action      |
      | Unsubscribe | W2                          | Unsubscribe |
    Examples:
      | Placeholder      |
      | $subscribelink$  |
      | $subscribe_link$ |

  Scenario Outline: User can view rendered Wiki article: "$subscribelink$", "$subscribe_link$" placeholders: Link to unsubscribe from changes to current article, including description: Unsubscribed
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
    And The user clicks the "First Article" wiki article link in the "Hierarchy" tree view in the "View Wiki" page
    And The "View Wiki Article" page is shown
    And The user clicks the "Subscribe" description link in the "Description" field in the "View Wiki Article" page
    When The user clicks the "Unsubscribe" description link in the "Description" field in the "View Wiki Article" page
    And The following wiki article details are shown in the "View Wiki Article" page:
      | Page Title    | Description                                           |
      | First Article | Subscribe to receive email when this article changes. |
    And The following description links are listed in the "Description" field in the "View Wiki Article" page:
      | Link Text | Destination Wiki Article ID | Action    |
      | Subscribe | W2                          | Subscribe |
    Examples:
      | Placeholder      |
      | $subscribelink$  |
      | $subscribe_link$ |
