@NotAutomated
@JIRA-Key-MANUSCRIPT-29701
@Case
Feature: Case - Resolved - Enable Add Subscribers

  Scenario: Administrator can add subscribers to a resolved case when add subscribers setting is enabled in the site configuration
    Given The user is logged in as Administrator
    And The following site configuration details exist:
       | Add Subscribers                                                            |
       | The case page will show a section for adding subscriptions for other users |
    And The following cases exist:
       | Case | Title              | Status   | Subscriber |
       | 16   | New Case to handle | Resolved |            |
    And The following users exist:
       | Full Name  | Email                    | Account Type  | Status |
       | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The user searches for the "16" search string by using the search box
    And The "View Resolved Case" page is shown
    And The user clicks the "Add Subscriber" dropdown in the "View Resolved Case" page
    When The user selects the following users from the "Add Subscriber" dropdown in the "View Resolved Case" page:
       | Test UserA |
    Then The "Add Subscriber" dropdown is closed
    And The following users are listed in the "Subscribers" section in the "View Resolved Case" page:
       | Test UserA |

  Scenario: Administrator cannot add subscribers to a resolved case when add subscribers setting is disabled in the site configuration
    Given The user is logged in as Administrator
    And The following site configuration details exist:
       | Add Subscribers                                                                |
       | The case page will not show a section for adding subscriptions for other users |
    And The following users exist:
       | Full Name  | Email                    | Account Type  | Status |
       | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The following cases exist:
       | Case | Title              | Status   | Subscriber |
       | 16   | New Case to handle | Resolved | Test UserA |
    When The user searches for the "16" search string by using the search box
    Then The "View Resolved Case" page is shown
    And The "Add Subscriber" dropdown is not shown on "View Resolved Case" page
