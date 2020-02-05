@NotAutomated
@JIRA-Key-MANUSCRIPT-31537
@Search
Feature: Search - Case - Remaining Time

  Scenario: Administrator user can search cases using the elapsed time as axis for search
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     | Status | Description                  | Opened By     | Estimate: remaining |
      | 17   | Add Users | Active | This is a good case to work. | Administrator | 0.08 hours          |
      | 18   | Add Wiki  | Active | This is fixed.               | Administrator | 0.4 hours           |
      | 19   | Edit User | Active | This needs to be fixed       | Administrator | 5 minutes           |
      | 20   | Add Area  | Active | The one which is Resolved    | Administrator | 5 minutes           |
      | 21   | Edit Area | Active | Still working                | Administrator | 7 minutes           |
    When The user searches for the "RemainingTime:0.08h" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
    # Case-19 & Case-20 are returned in search results as 5 minutes ~ 0.083 hour
      | Case | Title     | Status | Opened By     |
      | 17   | Add Users | Active | Administrator |
      | 19   | Edit User | Active | Administrator |
      | 20   | Add Area  | Active | Administrator |
