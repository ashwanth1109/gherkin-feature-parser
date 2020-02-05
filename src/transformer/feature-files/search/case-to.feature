@NotAutomated
@JIRA-Key-MANUSCRIPT-31544
@Search
Feature: Search - Case - To

  Background:
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name  | Email                    | Account Type  | Status |
      | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The following cases exist:
      | Category | ID | Title    | Status | Description     | Project |
      | Feature  | 17 | Case-17  | Active | This is a Case. | Inbox   |
    And The following case events exist:
      | Case | Type          | Content       | To                       | From    |
      | 17   | Email sent by | Hello there!! | testusera@manuscript.com | FogBugz |

  Scenario: Administrator user can search the list of all cases using the "To" as axis: Using the email address of the user
    When The user searches for the "To:testusera@manuscript.com" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Category | ID | Title   | Status | Opened By     |
      | Feature  | 17 | Case-17 | Active | Administrator |

  Scenario: Administrator user can search the list of all cases using the "To" as axis: Using the username of the user
    When The user searches for the "To:Test UserA" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Category | ID | Title   | Status | Opened By     |
      | Feature  | 17 | Case-17 | Active | Administrator |
