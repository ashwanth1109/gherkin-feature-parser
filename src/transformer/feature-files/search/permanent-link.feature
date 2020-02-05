@NotAutomated
@JIRA-Key-MANUSCRIPT-31591
@Search
Feature: Search - Permanent Link

  Scenario: Administrator can get the Permanent Link for a filter to share with any other user
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title     | Status | Description                  | Opened By     | Subcases  |
      | 24   | Users     | Active | This is a good case to work. | Administrator | Add Users |
      | 27   | Add Users | Active | This is fixed.               | Administrator |           |
      | 25   | Project   | Closed | This needs to be fixed       | Administrator |           |
    And The user searches for the "type:case" search string by using the "Search cases & wikis" search box
    And The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title     | Status | Opened By     |
      | 24   | Users     | Active | Administrator |
      | 27   | Add Users | Active | Administrator |
      | 25   | Project   | Closed | Administrator |
    And The user clicks the "More" dropdown menu in the "Search" page
    When The user selects the "Permanent Link" menu item in the "More" dropdown menu in the "Search" page
    Then The "Search" page is refreshed
    And The "Permanent Link" URL for the search filter is shown in the address bar of the web browser window
    And The following results are displayed in the "Search" page:
      | Case | Title     | Status | Opened By     |
      | 24   | Users     | Active | Administrator |
      | 27   | Add Users | Active | Administrator |
      | 25   | Project   | Closed | Administrator |
    And The "Permanent Link" URL for the search filter contains the following search result parameters:
      | Columns  | SearchFor   |
      | Case     | type%3Acase |
      | Status   |             |
      | OpenedBy |             |
      | Title    |             |

