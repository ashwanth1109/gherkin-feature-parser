@NotAutomated
@JIRA-Key-MANUSCRIPT-31554
@Search
Feature: Search - Case - Related To

  Background:
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     | Status   | Description                             | Opened By     | See Also        |
      | 28   | Case      | Active   | Please view Case 24, Case 25 & Case 27. | Administrator | Case 24, 25, 27 |
      | 24   | Subcase-1 | Active   | This needs to be fixed.                 | Administrator | Case 29         |
      | 25   | Subcase-2 | Closed   | This is fixed.                          | Administrator | Case 29         |
      | 27   | Subcase-3 | Resolved | The one which is Resolved               | Administrator | Case 29         |

  Scenario: Administrator user can search cases that are linked to the specified case using the "Related To" as axis: Relation one case linked to many cases
    When The user searches for the "RelatedTo:28" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title     | Status   | Opened By     |
      | 24   | Subcase-1 | Active   | Administrator |
      | 25   | Subcase-2 | Closed   | Administrator |
      | 27   | Subcase-3 | Resolved | Administrator |

  Scenario Outline: Administrator user can search cases that are linked to the specified case using the "Related To" as axis: Relation many cases linked to one case
    When The user searches for the "<RelatedTo>" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title | Status | Opened By     |
      | 28   | Case  | Active | Administrator |
    Examples:
      | RelatedTo    |
      | RelatedTo:24 |
      | RelatedTo:25 |
      | RelatedTo:26 |
