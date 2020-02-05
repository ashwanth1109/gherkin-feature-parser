@NotAutomated
@JIRA-Key-MANUSCRIPT-31581
@Search
Feature: Search - Wiki Article - Show - Subscribed

  Scenario: Administrator user can search subscribed wiki articles using "Show" axis
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Wiki   |
      | Wiki-A |
    And The following wiki articles exist:
      | Page Title    | Description                | Created by    | Wiki   | Subscribed by |
      | New Article 1 | This has not been written. | Administrator | Wiki-A | Administrator |
    When The user searches for the "wiki pages show:subscribed" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Type       | Headline      | Wiki   | Last edited by |
      | Wiki Pages | New Article 2 | Wiki-A | Administrator  |
