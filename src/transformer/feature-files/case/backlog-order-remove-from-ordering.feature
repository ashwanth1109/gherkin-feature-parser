@NotAutomated
@JIRA-Key-MANUSCRIPT-33073
@Case
Feature: Case - Backlog Order - Remove from Ordering

  Scenario: User can remove the case from ordering
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title | Backlog Order | Milestone               |
      | 17 | C1    | 1             | All projects: Undecided |
      | 18 | C2    | 2             | All projects: Undecided |
      | 19 | C3    | 3             | All projects: Undecided |
    When The user searches for the "17" search string by using the search box
    And The user is redirected to the "View Active Case" page
    And The user clicks the "Edit" button in the "View Active Case" page
    And The user clicks the "Remove from ordering" link in the "Backlog Order" field in the "Edit Active Case" page
    And The user clicks the "Save" button in the "Edit Active Case" page
    And The following backlog order is shown in the "View Active Case" page in the following order:
      | Backlog Order | Title |
      |               |       |
