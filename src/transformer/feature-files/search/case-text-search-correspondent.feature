@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30455
@Search
Feature: Search - Case - Text Search - Correspondent

  Scenario: Administrator user can search a active case using the correspondent of the case
    Given The user is logged in as Administrator
    And The following cases exist:
        | Case | Title          | Status | Correspondent     |
        | 17   | This is a case | Active | testuser@test.com |
    When The user searches for the "correspondent:testuser@test.com" search string by using the search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type | Case | Title          | Status | Correspondent     |
        | Case | 17   | This is a case | Active | testuser@test.com |

  Scenario: Administrator user can search a closed case using the correspondent of the case
    Given The user is logged in as Administrator
    And The following cases exist:
        | Case | Title          | Status | Correspondent     |
        | 17   | This is a case | Closed | testuser@test.com |
    When The user searches for the "correspondent:testuser@test.com" search string by using the search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type | Case | Title          | Status | Correspondent     |
        | Case | 17   | This is a case | Closed | testuser@test.com |

  Scenario: Administrator user can search a resolved case using the correspondent of the case
    Given The user is logged in as Administrator
    And The following cases exist:
        | Case | Title          | Status   | Correspondent     |
        | 17   | This is a case | Resolved | testuser@test.com |
    When The user searches for the "correspondent:testuser@test.com" search string by using the search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type | Case | Title          | Status   | Correspondent     |
        | Case | 17   | This is a case | Resolved | testuser@test.com |
