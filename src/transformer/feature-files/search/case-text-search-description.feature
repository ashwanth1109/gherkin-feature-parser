@NotAutomated
@JIRA-Key-MANUSCRIPT-30453
@Search
Feature: Search - Case - Text Search - Description

  Scenario: Administrator user can search an active case using the description in the case
    Given The user is logged in as Administrator
    And The following cases exist:
        | Case | Title         | Status   | Description                  |
        | 17   | Case-1 Active | Active   | This is a good case to work. |
    When The user searches for the "This is a good case to work." search string by using the search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type | Case | Title         | Status | Description                  |
        | Case | 17   | Case-1 Active | Active | This is a good case to work. |

  Scenario: Administrator user can search a closed case using the description in the case
    Given The user is logged in as Administrator
    And The following cases exist:
        | Case | Title          | Status   | Description                  |
        | 18   | Case-1 Closed  | Closed   | This is a good case to work. |
    When The user searches for the "This is a good case to work." search string by using the search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type | Case | Title         | Status | Description                  |
        | Case | 18   | Case-1 Closed | Closed | This is a good case to work. |

  Scenario: Administrator user can search a resolved case using the description in the case
    Given The user is logged in as Administrator
    And The following cases exist:
        | Case | Title          | Status   | Description                  |
        | 19   | Case-1 Resolved| Resolved | This is a good case to work. |
    When The user searches for the "This is a good case to work." search string by using the search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type | Case | Title           | Status   | Description                  |
        | Case | 19   | Case-1 Resolved | Resolved | This is a good case to work. |
