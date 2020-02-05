@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30472
@Search
Feature: Search - Case - Numbers

  Scenario: Administrator user can search an active case using the numbers the case contains
    Given The user is logged in as Administrator
    And The following cases exist:
        | Case | Title         | Status   | Description              |
        | 17   | Case-1 Active | Active   | This is case number 123. |
    When The user enters the following details in the "Search" box:
        |  Search cases & wikis |
        | "123"                 |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type | Case | Title         | Status | Description              |
        | Case | 17   | Case-1 Active | Active | This is case number 123. |

  Scenario: Administrator user can search a resolved case using the numbers the case contains
    Given The user is logged in as Administrator
    And The following cases exist:
        | Case | Title         | Status   | Description              |
        | 17   | Case-1 Active | Resolved | This is case number 123. |
    When The user enters the following details in the "Search" box:
        |  Search cases & wikis |
        | "123"                 |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type | Case | Title         | Status   | Description              |
        | Case | 17   | Case-1 Active | Resolved | This is case number 123. |

  Scenario: Administrator user can search a closed case using the numbers the case contains
    Given The user is logged in as Administrator
    And The following cases exist:
        | Case | Title         | Status | Description              |
        | 17   | Case-1 Active | Closed | This is case number 123. |
    When The user enters the following details in the "Search" box:
        |  Search cases & wikis |
        | "123"                 |
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
        | Type | Case | Title         | Status | Description              |
        | Case | 17   | Case-1 Active | Closed | This is case number 123. |
