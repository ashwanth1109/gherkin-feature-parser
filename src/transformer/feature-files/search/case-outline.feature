@NotAutomated
@JIRA-Key-MANUSCRIPT-31551
@Search
Feature: Search - Case - Outline

  Scenario Outline: Administrator user can search cases in the same subcase hierarchy as the specified case using the "Outline" as axis
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     | Status | Description                  | Opened By     | Subcases             |
      | 24   | Case      | Active | This is a good case to work. | Administrator | Subcase-1, Subcase-4 |
      | 27   | Subcase-1 | Active | This is fixed.               | Administrator |                      |
      | 25   | Subcase-2 | Closed | This needs to be fixed       | Administrator | Subcase-3            |
      | 26   | Subcase-3 | Active | The one which is Resolved    | Administrator |                      |
    When The user searches for the "<Outline>" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title     | Status | Opened By     |
      | 24   | Case      | Active | Administrator |
      | 27   | Subcase-1 | Active | Administrator |
      | 25   | Subcase-2 | Closed | Administrator |
      | 26   | Subcase-3 | Active | Administrator |
    Examples:
      | Outline    |
      | Outline:24 |
      | Outline:25 |
      | Outline:26 |
      | Outline:27 |
