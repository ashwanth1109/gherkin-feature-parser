@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30480
@Search
Feature: Search - Case - AssignedTo And ResolvedBy

  Scenario: Administrator user can search the list of all resolved cases using the search criteria with AssignedTo And ResolvedBy axes in search value
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name  | Email                    | Account Type  | Status |
      | Test UserA | testusera@manuscript.com | Normal        | Active |
      | Test UserB | testuserb@manuscript.com | Normal        | Active |
    And The following cases exist:
      | Case | Title    | Status   | Description              | Assigned to  | Resolved by   |
      | 17   | Case-17  | Resolved | This is case number 123. | Test UserB   | Administrator |
      | 18   | Case-18  | Resolved | This is case number 456. | Administrator| Administrator |
      | 19   | Case-19  | Resolved | This is case number 123. | Test UserA   | Administrator |
    When The user enters the following details in the "Search" box:
      | Search cases & wikis                                                                    |
      | (assignedto:"Test UserB" OR assignedTo:"Administrator") AND resolvedBy:"Administrator"  |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Type | Case | Title   | Status   | Description              | Assigned to  | Resolved by   |
      | Case | 17   | Case-17 | Resolved | This is case number 123. | Test UserB   | Administrator |
      | Case | 18   | Case-18 | Resolved | This is case number 456. | Administrator| Administrator |
