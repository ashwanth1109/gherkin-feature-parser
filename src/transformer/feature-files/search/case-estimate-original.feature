@NotAutomated
@JIRA-Key-MANUSCRIPT-31536
@Search
Feature: Search - Case - EstimateOriginal

  Scenario: Administrator user can search cases using the estimate original time as axis for search
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     | Status | Description                  | Opened By     | Estimate: original |
      | 17   | Add Users | Active | This is a good case to work. | Administrator | 0.08 hours         |
      | 18   | Add Wiki  | Active | This is fixed.               | Administrator | 0.4 hours          |
      | 19   | Edit User | Active | This needs to be fixed       | Administrator | 5 minutes          |
      | 20   | Add Area  | Active | The one which is Resolved    | Administrator | 0.08 hours         |
      | 21   | Edit Area | Active | Still working                | Administrator | 5 minutes          |
    When The user enters the following details in the "Search cases & wikis" box:
      | Search cases & wikis   |
      | EstimateOriginal:0.08h |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
    # Case-19 & Case-21 are returned in search results as 5 minutes ~ 0.083 hour
      | Case | Title     | Status | Opened By     |
      | 17   | Add Users | Active | Administrator |
      | 19   | Edit User | Active | Administrator |
      | 21   | Edit Area | Active | Administrator |
