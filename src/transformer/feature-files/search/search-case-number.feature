@NotAutomated
@JIRA-Key-MANUSCRIPT-30451
@Subscription
Feature: Search - Case Number

  Scenario: Administrator user can search a active case using the case number
    Given The user is logged in as Administrator
    And The following cases exist:
        | Case | Title   | Status |
        | 17   | Welcome | Active |
    When The user searches for the "17" search string by using the search box
    Then The "View Active Case" page is shown
    And The following case details are shown in the "View Active Case" page:
        | ID | Title   | Status |
        | 17 | Welcome | Active |

  Scenario: Administrator user can search a closed case using the case number
    Given The user is logged in as Administrator
    And The following cases exist:
        | Case | Title   | Status |
        | 17   | Welcome | Closed |
    When The user searches for the "17" search string by using the search box
    Then The "View Closed Case" page is shown
    And The following case details are shown in the "View Closed Case" page:
        | ID | Title   | Status |
        | 17 | Welcome | Closed |

  Scenario: Administrator user can search a resolved case using the case number
    Given The user is logged in as Administrator
    And The following cases exist:
        | Case | Title   | Status   |
        | 17   | Welcome | Resolved |
    When The user searches for the "17" search string by using the search box
    Then The "View Resolved Case" page is shown
    And The following case details are shown in the "View Resolved Case" page:
        | ID | Title   | Status   |
        | 17 | Welcome | Resolved |
