@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29039
@Case
Feature: Case - Create

  Scenario: User can create a new case
    Given The user is logged in as Normal User
    And The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Case" page
    And The user enters the case details in the "New Case" page:
      | Title      |
      | Cornucopia |
    When The user clicks the "Open" button in the "New Case" page
    Then The user is redirected to the "View Active Case" page
    And The following case details are shown in the "View Active Case" page:
      | ID | Title      | Status |
      | 17 | Cornucopia | Active |

