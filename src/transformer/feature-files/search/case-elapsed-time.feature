@NotAutomated
@JIRA-Key-MANUSCRIPT-31533
@Search
Feature: Search - Case - Elapsed Time

  Scenario: Administrator user can search cases using the elapsed time as axis for search
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     | Status | Description                  | Opened By     | Estimate: elapsed |
      | 17   | Add Users | Active | This is a good case to work. | Administrator | 0.01 hours        |
      | 18   | Add Wiki  | Active | This is fixed.               | Administrator | 0.06 hours        |
      | 19   | Edit User | Active | This needs to be fixed       | Administrator | 1 minute          |
      | 20   | Add Area  | Active | The one which is Resolved    | Administrator | 0.01 hours        |
      | 21   | Edit Area | Active | Still working                | Administrator | 4 minutes         |
    When The user searches for the "ElapsedTime:0.01h" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
    # Case #19 is returned in search results as 1 minute ~ 0.016 hour
      | Case | Title     | Status | Opened By     |
      | 17   | Add Users | Active | Administrator |
      | 19   | Edit User | Active | Administrator |
      | 20   | Add Area  | Active | Administrator |
