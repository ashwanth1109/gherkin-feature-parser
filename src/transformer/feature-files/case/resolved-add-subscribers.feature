@NotAutomated
@JIRA-Key-MANUSCRIPT-29715
@Case
Feature: Case - Resolved - Add Subscribers

  Scenario: Administrator can add subscriber to a resolved case
    Given The user is logged in as Administrator
    And The following cases exist:
       | ID   | Title              | Status   | Subscriber |
       | 16   | New Case to handle | Resolved |            |
    And The following users exist:
       | Full Name  | Email                    | Account Type  | Status |
       | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The following site configuration details exist:
       | Community Users Control                 |
       | Anybody can create their community user |
    And The user searches for the "16" search string by using the search box
    And The "View Resolved Case" page is shown
    And The user clicks the "Add Subscriber" dropdown in the "View Resolved Case" page
    When The user selects the following users from the "Add Subscriber" dropdown in the "View Resolved Case" page:
       | Test UserA |
    Then The "Add Subscriber" dropdown is closed
    And The following users are listed in the "Subscribers" section in the "View Resolved Case" page:
       | Test UserA |
