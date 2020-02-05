@NotAutomated
@JIRA-Key-MANUSCRIPT-31526
@Search
Feature: Search - Wiki Article - Text Search - Content

  Scenario: Administrator user can search wiki articles using a word from content of wiki articles
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
      | New Page-1    | This is written.           | Administrator | Wiki-A |
      | Wiki Page-2   | This is great.             | Administrator | Wiki-A |
    And The following wiki article events exist:
      | Headline      | Type            | Content                     | User          |
      | New Article 1 | Created by      | This is another draft.      | Administrator |
      | Apple         | Last Edited by  | This will never be written. | Administrator |
      | Wiki Page-2   | Last Edited by  | The final Edit.             | Administrator |
    When The user searches for the "written" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Type       | Headline      | Wiki   | Last edited by |
      | Wiki Pages | New Article 2 | Wiki-A | Administrator  |
      | Wiki Pages | New Article 3 | Wiki-A | Administrator  |
      | Wiki Pages | Apple         | Wiki-A | Administrator  |
      | Wiki Pages | New Page-1    | Wiki-A | Administrator  |
