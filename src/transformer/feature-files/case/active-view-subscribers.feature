@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29848
@Case
Feature: Case - Active - View Subscribers

  Scenario: Administrator can view subscriber of an active case
    Given The user is logged in as Administrator
    And The following users exist:
       | Full Name  | Email                    | Account Type  | Status |
       | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The following cases exist:
       | Case | Title              | Status | Subscriber |
       | 16   | New Case to handle | Active | Test UserA |
    And The following site configuration details exist:
       | Community Users Control                 |
       | Anybody can create their community user |
    When The user searches for the "16" search string by using the search box
    Then The "View Active Case" page is shown
    And The following users are listed in the "Subscribers" section in the "View Active Case" page:
       | Test UserA |
