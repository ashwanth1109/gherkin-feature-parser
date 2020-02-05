@NotAutomated
@JIRA-Key-MANUSCRIPT-31532
@Search
Feature: Search - Wiki Article - Text Starts with

  Scenario: Administrator user can search wiki articles using the starting word of the wiki article content
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Wiki   |
      | Wiki-A |
    And The following wiki articles exist:
      | Page Title    | Description                | Created by    | Wiki   |
      | New Article 1 | This has not been written. | Administrator | Wiki-A |
      | New Article 2 | This has been written.     | Administrator | Wiki-A |
      | New Article 3 | This is being written.     | Administrator | Wiki-A |
      | Apple         | Red apple.                 | Administrator | Wiki-A |
      | New Page-1    | Good Article.              | Administrator | Wiki-A |
      | Wiki Page-2   | This is great.             | Administrator | Wiki-A |
    And The following wiki article events exist:
      | Headline      | Type            | Content                     | User          |
      | New Article 1 | Created by      | This has not been written.  | Administrator |
      | Apple         | Last Edited by  | Why is there an edit.       | Administrator |
      | Wiki Page-2   | Last Edited by  | The final Edit.             | Administrator |
      | New Page-1    | Last Edited by  | This is an article.         | Administrator |
    When The user searches for the "This" search string by using the "Search this wiki" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Type       | Headline      | Wiki   | Last edited by |
      | Wiki Pages | New Article 1 | Wiki-A | Administrator  |
      | Wiki Pages | New Article 2 | Wiki-A | Administrator  |
      | Wiki Pages | New Article 3 | Wiki-A | Administrator  |
      | Wiki Pages | New Page-1    | Wiki-A | Administrator  |
