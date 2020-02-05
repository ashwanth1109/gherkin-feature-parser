@NotAutomated
@JIRA-Key-MANUSCRIPT-31552
@Search
Feature: Search - Case - Parent

  Scenario: Administrator user can search a subcase using the "Parent" as axis
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     | Status   | Description                  | Opened By     | Subcases  |
      | 24   | Users     | Active   | This is a good case to work. | Administrator | Add Users |
      | 27   | Add Users | Active   | This is fixed.               | Administrator |           |
      | 25   | Project   | Closed   | This needs to be fixed       | Administrator |           |
      | 26   | Area      | Active   | The one which is Resolved    | Administrator | Edit Area |
      | 28   | Edit Area | Resolved | Still working                | Administrator |           |
    When The user searches for the "Parent:24" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title     | Status | Opened By     |
      | 27   | Add Users | Active | Administrator |
