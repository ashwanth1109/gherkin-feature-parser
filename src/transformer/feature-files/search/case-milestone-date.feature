@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30517
@Search
Feature: Search - Case - MilestoneDate

  Scenario: Administrator user can search the list of all cases with the specified milestone completion date using the "MilestoneDate" axis
    Given The user is logged in as Administrator
    And The following milestones exist:
      | Edit | Can Delete | Milestone Name | Assignable | Backlog | Completion Date | Start Date |
      | true | true       | Milestone-1    | Yes        | No      | 2020/01/01      | 2019/12/12 |
    And The following users exist:
      | Full Name  | Email                    | Account Type  | Status |
      | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The following cases exist:
      | Category | ID | Title    | Status | Description     | Project | Milestone Name |
      | Feature  | 17 | Case-17  | Active | This is a Case. | Inbox   | Milestone-1    |
    When The user enters the following details in the "Search" box:
      | Search cases & wikis       |
      | MilestoneDate:"2020/01/01" |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Category | ID | Title   | Status | Description     | Project | Milestone Name |
      | Feature  | 17 | Case-17 | Active | This is a Case. | Inbox   | Milestone-1    |
