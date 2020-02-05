@NotAutomated
@JIRA-Key-MANUSCRIPT-31547
@Search
Feature: Search - Case - Release Notes - Wild Card

  Scenario: Administrator user can search the list of all cases having release notes using the "ReleaseNotes:*"
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     | Status   | Description                  | Opened By     | Release Notes                       |
      | 17   | Add Users | Active   | This is a good case to work. | Administrator | It is a high priority case.         |
      | 18   | Add Wiki  | Closed   | This is fixed.               | Administrator | It is a closed case.                |
      | 19   | Edit User | Active   | This needs to be fixed       | Administrator | It is about an important case.      |
      | 20   | Add Area  | Resolved | The one which is Resolved    | Administrator | It is a resolved case.              |
      | 21   | Edit Area | Active   | Still working                | Administrator | It is an active case to edit area.  |
      | 22   | Edit Wiki | Active   | Edit Wiki                    | Administrator |                                     |
    When The user searches for the "ReleaseNotes:*" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title     | Status   | Opened By     |
      | 17   | Add Users | Active   | Administrator |
      | 18   | Add Wiki  | Closed   | Administrator |
      | 19   | Edit User | Active   | Administrator |
      | 20   | Add Area  | Resolved | Administrator |
      | 21   | Edit Area | Active   | Administrator |
