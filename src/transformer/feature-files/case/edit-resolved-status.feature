@NotAutomated
@JIRA-Key-MANUSCRIPT-31632
@Case
Feature: Case - Edit - Resolved Status

  Scenario: User can use resolved statuses when editing resolved cases
    Given The user is logged in as Administrator
    And The following resolved statuses exist in the following display order:
      | Status Name  | Category | Deleted |
      | Wrong Item   | Bug      | true    |
      | Correct Item | Bug      | false   |
    And The following cases exist:
      | ID | Title | Status   |
      | 17 | 12345 | Resolved |
    When The user searches for the "17" search string by using the search box
    And The user clicks the "Edit" button in the "View Resolved Case" page
    And The "Edit Resolved Case" page is shown
    Then The following values are available for the "Status" dropdown in the "Edit Resolved Case" page in the following order:
      | Active       |
      | Correct Item |
