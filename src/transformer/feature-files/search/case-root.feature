@NotAutomated
@JIRA-Key-MANUSCRIPT-31553
@Search
Feature: Search - Case - Root

  Background:
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     | Status   | Description                  | Opened By     | Subcases             |
      | 24   | Case      | Active   | This is a good case to work. | Administrator | Subcase-1, Subcase-2 |
      | 27   | Subcase-1 | Active   | This is fixed.               | Administrator |                      |
      | 25   | Subcase-2 | Closed   | This needs to be fixed       | Administrator | Subcase-3            |
      | 26   | Subcase-3 | Active   | The one which is Resolved    | Administrator |                      |

  Scenario: Administrator user can search cases in the hierarchy underneath the specified case using the "Root" as axis: Subcases of a case
    When The user searches for the "Root:24" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title     | Status   | Opened By     |
      | 27   | Subcase-1 | Active   | Administrator |
      | 25   | Subcase-2 | Closed   | Administrator |
      | 26   | Subcase-3 | Active   | Administrator |

  Scenario: Administrator user can search cases in the hierarchy underneath the specified case using the "Root" as axis: Subcases of a subcase
    When The user searches for the "Root:25" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title     | Status   | Opened By     |
      | 26   | Subcase-3 | Active   | Administrator |
