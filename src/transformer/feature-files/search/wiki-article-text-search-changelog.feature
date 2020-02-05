@NotAutomated
@JIRA-Key-MANUSCRIPT-31528
@Search
Feature: Search - Wiki Article - Text Search - Changelog

  Scenario: Administrator user can search wiki articles using a word from the change logs of wiki articles
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
      | New Page-1    | This is good.              | Administrator | Wiki-A |
      | Wiki Page-2   | This is great.             | Administrator | Wiki-A |
    And The following wiki article events exist:
      | Headline      | Type            | Content                    | User          | Change Log Comment |
      | New Article 1 | Created by      | This is another draft.     | Administrator | Final Edit         |
      | New Article 2 | Last Edited by  | This is new.               | Administrator | Needs Edit         |
      | New Article 3 | Last Edited by  | This is final.             | Administrator | More Edits         |
      | Apple         | Created by      | This is another draft.     | Administrator | Final Page         |
      | New Page-1    | Last Edited by  | This will be good.         | Administrator | New Draft          |
      | Wiki Page-2   | Last Edited by  | The is the final version.  | Administrator | No More Edits      |
    When The user enters the following details in the "Search cases & wikis" box:
      | Search cases & wikis |
      | Edit                 |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Type       | Headline      | Wiki   | Last edited by |
      | Wiki Pages | New Article 1 | Wiki-A | Administrator  |
      | Wiki Pages | New Article 2 | Wiki-A | Administrator  |
      | Wiki Pages | New Article 3 | Wiki-A | Administrator  |
      | Wiki Pages | Wiki Page-2   | Wiki-A | Administrator  |
