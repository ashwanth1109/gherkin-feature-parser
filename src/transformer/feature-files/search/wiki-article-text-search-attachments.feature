@NotAutomated
@JIRA-Key-MANUSCRIPT-31527
@Search
Feature: Search - Wiki Article - Text Search - Attachments

  Scenario: Administrator user can search wiki articles using a word from attachments of wiki articles
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Wiki   |
      | Wiki-A |
    And The following wiki articles exist:
      | Page Title    | Description                | Created by    | Wiki   | Attachments    |
      | New Article 1 | This has not been written. | Administrator | Wiki-A | image.jpg      |
      | New Article 2 | This has been written.     | Administrator | Wiki-A | image (2).jpg  |
      | New Article 3 | This is being written.     | Administrator | Wiki-A | abc.jpg        |
      | Apple         | This is an apple.          | Administrator | Wiki-A | images.txt     |
      | New Page-1    | This is good.              | Administrator | Wiki-A | xyz.txt        |
      | Wiki Page-2   | This is great.             | Administrator | Wiki-A | images.jpg     |
    And The following wiki article events exist:
      | Headline      | Type            | Content                    | User          |
      | New Article 1 | Created by      | This is another draft.     | Administrator |
      | Apple         | Last Edited by  | This will never be edited. | Administrator |
      | Wiki Page-2   | Last Edited by  | The final Edit.            | Administrator |
    When The user searches for the "image" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Type       | Headline      | Wiki   | Last edited by |
      | Wiki Pages | New Article 1 | Wiki-A | Administrator  |
      | Wiki Pages | New Article 2 | Wiki-A | Administrator  |
      | Wiki Pages | Apple         | Wiki-A | Administrator  |
      | Wiki Pages | Wiki Page-2   | Wiki-A | Administrator  |
