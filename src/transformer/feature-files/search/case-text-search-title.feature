@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30452
@Search
Feature: Search - Case - Text Search - Title

  Scenario: Administrator user can search a active case using the title of the case
    Given The user is logged in as Administrator
    And The following cases exist:
        | Case | Title          | Status |
        | 17   | This is a case | Active |
    When The user searches for the "This is a case" search string by using the search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Case | Title          | Status |
        | 17   | This is a case | Active |

  Scenario: Administrator user can search a closed case using the title of the case
    Given The user is logged in as Administrator
    And The following cases exist:
        | Case | Title          | Status |
        | 17   | This is a case | Closed |
    When The user searches for the "This is a case" search string by using the search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Case | Title          | Status |
        | 17   | This is a case | Closed |

  Scenario: Administrator user can search a resolved case using the title of the case
    Given The user is logged in as Administrator
    And The following cases exist:
        | Case | Title          | Status   |
        | 17   | This is a case | Resolved |
    When The user searches for the "This is a case" search string by using the search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Case | Title          | Status   |
        | 17   | This is a case | Resolved |
