@NotAutomated
@JIRA-Key-MANUSCRIPT-31561
@Search
Feature: Search - Case - Text Search Negation

  Scenario: Administrator user can search cases having one text and negate other text entered in search field
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     | Status   | Description                                      | Opened By     |
      | 17   | Add Users | Active   | Click reply at the top of this case to email us. | Administrator |
      | 18   | Add Wiki  | Closed   | This is a high priority case.                    | Administrator |
      | 19   | Edit User | Active   | My team is tracking this case.                   | Administrator |
      | 20   | Add Area  | Resolved | You can resolve and close this case.             | Administrator |
      | 21   | Edit Area | Active   | This case has been assigned to you.              | Administrator |
    When The user searches for the "this -is" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title     | Status   | Opened By     |
      | 17   | Add Users | Active   | Administrator |
      | 20   | Add Area  | Resolved | Administrator |
      | 21   | Edit Area | Active   | Administrator |
