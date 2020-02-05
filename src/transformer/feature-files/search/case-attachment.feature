@NotAutomated
@JIRA-Key-MANUSCRIPT-31542
@Search
Feature: Search - Case - Attachment

  Background:
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     | Status   | Description                  | Opened By     | Attachment    |
      | 17   | Add Users | Active   | This is a good case to work. | Administrator | downloads.png |
      | 18   | Add Wiki  | Closed   | This is fixed.               | Administrator | downloads.jpg |
      | 19   | Edit User | Active   | This needs to be fixed       | Administrator | downloads.txt |
      | 20   | Add Area  | Resolved | The one which is Resolved    | Administrator | downloads.pdf |

  Scenario: Administrator user can search the list of all cases using the "Attachment" as axis: Search for complete string
    When The user searches for the "attachment:downloads.txt" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title     | Status   | Opened By     |
      | 19   | Edit User | Active   | Administrator |

  Scenario: Administrator user can search the list of all cases using the "Attachment" as axis: Search for partial string
    When The user searches for the "attachment:downloads" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title     | Status   | Opened By     |
      | 17   | Add Users | Active   | Administrator |
      | 18   | Add Wiki  | Closed   | Administrator |
      | 19   | Edit User | Active   | Administrator |
      | 20   | Add Area  | Resolved | Administrator |
