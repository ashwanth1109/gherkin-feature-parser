@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30478
@Search
Feature: Search - Case - Negation

  Scenario: Administrator user can search the list of cases with the search criteria has negation for a specific axis value
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name  | Email                    | Account Type  | Status |
      | Test UserA | testusera@manuscript.com | Normal        | Active |
      | Test UserB | testuserb@manuscript.com | Normal        | Active |
    And The following cases exist:
      | Case | Title           | Status   | Description              | Assigned to  |
      | 17   | Case-1 Active   | Active   | This is case number 123. | Test UserB   |
      | 18   | Case-1 Resolved | Resolved | This is case number 456. | Test UserA   |
    When The user enters the following details in the "Search" box:
      |  Search cases & wikis                            |
      |  type:case status:open -assignedTo:"test usera"  |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Type | Case | Title           | Status   | Description              |
      | Case | 17   | Case-1 Active   | Active   | This is case number 123. |
