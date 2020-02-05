@NotAutomated
@JIRA-Key-MANUSCRIPT-29690
@Case
Feature: Case - Create - Public Case

  Scenario: Anybody can open a public case
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
    And The user clicks the "New Case" button
    And The user is redirected to the "New Public Case" page
    When The user enters the public case details in the "New Public Case" page:
      | Title | Project              | Area | Description   | Your Email             |
      | PC1   | FogBugz (5k Rewrite) | Misc | Public Case 1 | somebody@somewhere.com |
    And The user clicks the "OK" button in the "New Public Case" page:
    Then The user is redirected to the "View Public Case" page
    And The following public case details are listed in the "View Public Case" page:
      | ID | Title      | Description   |
      | 17 | (Open) PC1 | Public Case 1 |
    And The "Case Ticket" value is shown in the "View Public Case" page
