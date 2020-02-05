@NotAutomated
@JIRA-Key-MANUSCRIPT-31540
@Search
Feature: Search - Case - Correspondent

  Background:
    Given The user is logged in as Administrator
    And The following users exist:
      | Full Name  | Email                    | Account Type  | Status |
      | Test UserA | testusera@manuscript.com | Normal        | Active |
    And The following cases exist:
      | Case | Title     | Status   | Description                  | Opened By     | Correspondent            |
      | 17   | Add Users | Active   | This is a good case to work. | Administrator | testusera@manuscript.com |
      | 18   | Add Wiki  | Closed   | This is fixed.               | Administrator | testusera@manuscript.com |
      | 19   | Edit User | Active   | This needs to be fixed       | Administrator | testusera@manuscript.com |
      | 20   | Add Area  | Resolved | The one which is Resolved    | Administrator | testusera@manuscript.com |

  Scenario:Administrator user can search the list of all cases using the "Correspondent" as axis: Using the email address of the "Correspondent"
    When The user searches for the "Correspondent:testusera@manuscript.com" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title     | Status   | Opened By     |
      | 17   | Add Users | Active   | Administrator |
      | 18   | Add Wiki  | Closed   | Administrator |
      | 19   | Edit User | Active   | Administrator |
      | 20   | Add Area  | Resolved | Administrator |

  Scenario: Administrator user can search the list of all cases using the "Correspondent" as axis: Using the username of the "Correspondent""
    When The user searches for the "Correspondent:Test UserA" search string by using the "Search cases & wikis" search box
    Then The "Search" page is shown
    And The following results are displayed in the "Search" page:
      | Case | Title     | Status   | Opened By     |
      | 17   | Add Users | Active   | Administrator |
      | 18   | Add Wiki  | Closed   | Administrator |
      | 19   | Edit User | Active   | Administrator |
      | 20   | Add Area  | Resolved | Administrator |
