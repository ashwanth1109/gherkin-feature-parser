@NotAutomated
@JIRA-Key-MANUSCRIPT-30023
@Case
Feature: Time Tracking - Current Case

  Scenario: User can see a case they work on in the sidebar
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title |
      | 17 | 12345 |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    When The user clicks the "Start Work" button in the "View Active Case" page
    Then The "Case 17" menu item is shown in the sidebar
    And The "Time Tracking" menu item is not shown in the sidebar

  Scenario: User can see a case they work on in the sidebar menu
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title |
      | 17 | 12345 |
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    When The user clicks the "Start Work" button in the "View Active Case" page
    And The user hovers over the "Time Tracking" menu item in the sidebar menu
    Then The "Active Case: 17 12345" link is shown in the "Working On" section in the sidebar menu
