@NotAutomated
@JIRA-Key-MANUSCRIPT-31643
@Case
Feature: Case - Edit - Disable Assignee Field when assignee is forced

  Scenario Outline: When creating a case the assignee cannot be changed if forced in the workflow
    Given The user is logged in as Administrator
    And The "Default workflow" workflow has the following workflow rules:
      | Category        | Action                                           | Status | Assign To  | Force "Assign To" |
      | <Category Name> | Creating or Editing the status of an Active Case | Active | Unassigned | true              |
    When The user clicks the "New Case" button in the sidebar
    And The user enters the case details in the "New Case" page:
      | Category        |
      | <Category Name> |
    Then The following case details are shown in the "New Case" page:
      | Assigned To |
      | Unassigned  |
    And The "Assigned To" dropdown is disabled in the "New Case" page
    Examples:
      | Category Name |
      | Bug           |
      | Feature       |
      | Schedule Item |
      | Inquiry       |

  Scenario Outline: When editing an active case the assignee cannot be changed if forced in the workflow
    Given The user is logged in as Administrator
    And The "Default workflow" workflow has the following workflow rules:
      | Category        | Action                                           | Status | Assign To  | Force "Assign To" |
      | <Category Name> | Creating or Editing the status of an Active Case | Active | Unassigned | true              |
    And The following cases exist:
      | Case | Title      | Status | Category        |
      | 17   | Red rabbit | Active | <Category Name> |
    When The user searches for the "17" search string by using the search box
    Then The "Edit Active Case" page is shown
    And The following case details are shown in the "Edit Active Case" page:
      | Assigned To |
      | Unassigned  |
    And The "Assigned To" dropdown is disabled in the "New Case" page
    Examples:
      | Category Name |
      | Bug           |
      | Feature       |
      | Schedule Item |
      | Inquiry       |
