@NotAutomated
@JIRA-Key-MANUSCRIPT-31631
@Case
Feature: Case - Edit - Active Status

  Scenario: User can use active statuses when creating cases
    Given The user is logged in as Administrator
    And The following active statuses exist in the following display order:
      | Status Name  | Category | Deleted |
      | Wrong Item   | Bug      | true    |
      | Correct Item | Bug      | false   |
    When The user clicks the "New Case" button in the sidebar
    Then The following values are available for the "Status" dropdown in the "View Active Case" page in the following order:
      | Active       |
      | Correct Item |

  Scenario: User can use active statuses when editing active cases
    Given The user is logged in as Administrator
    And The following active statuses exist in the following display order:
      | Status Name  | Category | Deleted |
      | Wrong Item   | Bug      | true    |
      | Correct Item | Bug      | false   |
    And The following cases exist:
      | ID | Title | Status |
      | 17 | 12345 | Active |
    When The user searches for the "17" search string by using the search box
    And The user clicks the "Edit" button in the "View Active Case" page
    And The "Edit Active Case" page is shown
    Then The following values are available for the "Status" dropdown in the "Edit Active Case" page in the following order:
      | Active       |
      | Correct Item |

