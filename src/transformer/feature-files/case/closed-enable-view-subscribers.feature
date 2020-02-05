@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29707
@Case
Feature: Case - Closed - Enable View Subscribers

  Scenario: Administrator can view subscriber of an closed case when show subscribers setting is enabled in the site configuration
    Given The user is logged in as Administrator
    And The following site configuration details exist:
       | Show Subscribers                                                      |
       | The case page will show users who have subscribed to the current case |
    And The following users exist:
       | Full Name  | Email                    | Account Type  | Status |
       | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The following cases exist:
       | Case | Title              | Status | Subscriber |
       | 16   | New Case to handle | Closed | Test UserA |
    When The user searches for the "16" search string by using the search box
    Then The "View Closed Case" page is shown
    And The following users are listed in the "Subscribers" section in the "View Closed Case" page:
       | Test UserA |

  Scenario: Administrator cannot view subscriber of an closed case when show subscribers setting is disabled in the site configuration
    Given The user is logged in as Administrator
    And The following site configuration details exist:
       | Show Subscribers                                                          |
       | The case page will not show users who have subscribed to the current case |
    And The following users exist:
       | Full Name  | Email                    | Account Type  | Status |
       | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The following cases exist:
       | Case | Title              | Status | Subscriber |
       | 16   | New Case to handle | Closed | Test UserA |
    When The user searches for the "16" search string by using the search box
    Then The "View Closed Case" page is shown
    And The following users are listed in the "Subscribers" section in the "View Closed Case" page:
       | Subscribers |
       |             |
