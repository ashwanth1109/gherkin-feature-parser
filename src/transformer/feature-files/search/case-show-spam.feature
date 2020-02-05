@NotAutomated
@JIRA-Key-MANUSCRIPT-31578
@Search
Feature: Search - Case - Show - Spam

  Scenario: Administrator user can search spam cases using "Show" axis
    Given The user is logged in as Administrator
    And The following cases exist:
      | Category | ID | Title   | Status | Opened By     |
      | Inquiry  | 17 | Case-17 | Active | Administrator |
    And The following case events exist:
      | Case | Type        | User          |
      | 17   | Marked Spam | Administrator |
    When The user searches for the "Cases Show:Spam" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Category | ID | Title   | Status | Opened By     |
      | Inquiry  | 17 | Case-17 | Active | Administrator |
