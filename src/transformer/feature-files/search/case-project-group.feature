@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-31524
@Search
Feature: Search - Case - Project Group

  Scenario: Administrator user can search the list of all cases using an axis Project Group
    Given The user is logged in as Administrator
    And The following project groups exist:
      | Name                 | Description                                       |
      | Key company projects | The group of the most important company projects. |
    And The following projects exist:
      | Project Name | Primary Contact | Project Groups       |
      | Project-1    | Administrator   | Key company projects |
    And The following cases exist:
      | Case | Title    | Status   | Description              | Project   |
      | 17   | Case-17  | Active   | This is case number 123. | Project-1 |
      | 18   | Case-18  | Resolved | This is case number 456. | Project-1 |
      | 19   | Case-19  | Closed   | This is case number 456. | Inbox     |
    When The user enters the following details in the "Search" box:
      | Search cases & wikis                |
      | projectGroup:"Key company projects" |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Type | Case | Title   | Status   | Description              | Project   | Project Group        |
      | Case | 17   | Case-17 | Active   | This is case number 123. | Project-1 | Key company projects |
      | Case | 18   | Case-18 | Resolved | This is case number 456. | Project-1 | Key company projects |
