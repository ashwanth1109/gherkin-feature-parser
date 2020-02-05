@NotAutomated
@JIRA-Key-MANUSCRIPT-29447
@Priority
Feature: Priority - Default - Open Public Case

  Scenario: Default priority is a default choice when opening a case
    Given The user is logged in as Administrator
    And The following workflows exist:
      | Workflow Name |
      | 5k Rewrite    |
    And The following projects exist:
      | Project Name         | Workflow   |
      | FogBugz (5k Rewrite) | 5k Rewrite |
    And The "Anonymous Users" permissions are set to the "Submit Cases" value for the "FogBugz (5k Rewrite)" project
    And The priority number "7" is marked as default
    And The user logs out
    And The user is redirected to the "Login" page
    And The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Public Case" page
    When The user enters the public case details in the "New Public Case" page:
      | Project              | Area |
      | FogBugz (5k Rewrite) | Misc |
    And The user clicks the "OK" button in the "New Public Case" page
    Then The user is redirected to the "View Public Case" page
    And The following public case details are shown in the "View Public Case" page:
      | ID | Title             | Description |
      | 17 | (Open) (Untitled) |             |
    And The user is logged in as Administrator
    And The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button in the top panel in the "View Active Case" page
    And The following case details are shown in the "View Active Case" page:
      | ID | Title      | Description | Priority  |
      | 17 | (Untitled) |             | Don't Fix |
