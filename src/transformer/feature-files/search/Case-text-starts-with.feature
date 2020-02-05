@NotAutomated
@JIRA-Key-MANUSCRIPT-31531
@Search
Feature: Search - Case - Text Starts with

  Scenario: Administrator user can search cases using the starting word of the case content
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     | Status   | Description                  | Opened By     |
      | 17   | Add Users | Active   | This is a good case to work. | Administrator |
      | 18   | Add Wiki  | Closed   | This is fixed.               | Administrator |
      | 19   | Edit User | Active   | This needs to be fixed       | Administrator |
      | 20   | Add Area  | Resolved | The one which is Resolved    | Administrator |
      | 21   | Edit Area | Active   | Still working                | Administrator |
    When The user searches for the "This" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title     | Status   | Description                  | Opened By     |
      | 17   | Add Users | Active   | This is a good case to work. | Administrator |
      | 18   | Add Wiki  | Closed   | This is fixed.               | Administrator |
      | 19   | Edit User | Active   | This needs to be fixed       | Administrator |
