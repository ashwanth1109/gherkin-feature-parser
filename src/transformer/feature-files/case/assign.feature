@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29118
@Case
Feature: Case - Assign

  Scenario Outline: User can assign a case
    Given The user is logged in as Normal User
    And The following users exist:
      | Full Name | Email                | Role   |
      | Mr Robot  | somebody@nowhere.com | Normal |
    And The following cases exist:
      | ID | Title            |
      | 16 | Ducks dont quack |
    And The user searches for the "16" search string by using the search box
    And The user is redirected to the "View Active Case" page
    When The user clicks the "Assign" button in the "<Panel Position>" panel in the "View Active Case" page
    And The user selects the "Mr Robot" value in the assign dropdown in the "<Panel Position>" panel in the "View Active Case" page
    And The user is redirected to the "Edit Active Case" page
    And The user clicks the "Assign" button in the "Edit Active Case" page
    Then The following case details are shown in the "View Active Case" page:
      | Assigned To |
      | Mr Robot    |
    Examples:
      | Panel Position |
      | top            |
      | bottom         |
