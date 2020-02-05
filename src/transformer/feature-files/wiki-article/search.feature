@NotAutomated
@JIRA-Key-MANUSCRIPT-31276
@WikiArticle
Feature: Wiki article - Search

  Background:
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Wiki   |
      | Wiki-A |
    And The following wiki articles exist:
      | Page Title    | Description                | Created by    | Wiki   |
      | New Article 1 | This has not been written. | Administrator | Wiki-A |
      | New Article 2 | This has been written.     | Administrator | Wiki-A |
      | New Article 3 | This is being written.     | Administrator | Wiki-A |
      | Apple         | This is an apple.          | Administrator | Wiki-A |
      | Wiki Page-1   | This is good.              | Administrator | Wiki-A |
      | Wiki Page-2   | This is great.             | Administrator | Wiki-A |
    And The following wiki article events exist:
    # TODO: When an article was edited, the event name is "Last edited by". Find out the other possible event names.
      | Headline      | Type            | Content                    | User          |
      | New Article 1 | Last Edited by  | This is another draft.     | Administrator |
      | Apple         | Last Edited by  | This will never be edited. | Administrator |
      | Wiki Page-2   | Last Edited by  | This is the final Edit.    | Administrator |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Wiki-A" wiki link in the sidebar menu
    And The "View Wiki" page is shown

  Scenario: Administrator user can search wiki articles in the wiki using page title of wiki articles
    When The user searches for the "New Article" search string by using the "Search this wiki" search box in the Wiki sidebar
    # TODO: Find out the exact fields that are used for the search.
    Then The "Search Wiki Article" page is shown in the "View Wiki" page
    And The following search results are shown in the "Search Wiki Article" tab in the "View Wiki" page:
    # TODO: Find out the order.
    # TODO: Search results should include the timestamp. For example: Created by Manisha Singh on 1/16/2020 9:19 PM or Last edited by Manisha Singh on 1/16/2020 9:19
      | Page Title    | Description            | Created by    | Last edited by |
      | New Article 1 | This is another draft. |               | Administrator  |
      | New Article 2 | This has been written. | Administrator |                |
      | New Article 3 | This is being written. | Administrator |                |

  Scenario: Administrator user can search wiki articles in the wiki using description details of wiki articles
    When The user searches for the "This" search string by using the "Search this wiki" search box in the Wiki sidebar
    # TODO: Find out the exact fields that are used for the search.
    Then The "Search Wiki Article" tab is shown in the "View Wiki" page
    And The following search results are shown in the "Search Wiki Article" tab in the "View Wiki" page:
    # TODO: Find out the order.
    # TODO: Search results should include the timestamp. For example: Created by Manisha Singh on 1/16/2020 9:19 PM or Last edited by Manisha Singh on 1/16/2020 9:19
      | Page Title    | Description                | Created by    | Last edited by |
      | New Article 1 | This is another draft.     |               | Administrator  |
      | New Article 2 | This has been written.     | Administrator |                |
      | New Article 3 | This is being written.     | Administrator |                |
      | Apple         | This will never be edited. |               | Administrator  |
      | Wiki Page-1   | This is good.              | Administrator |                |
      | Wiki Page-2   | This is the final Edit.    |               | Administrator  |
