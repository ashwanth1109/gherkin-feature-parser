@NotAutomated
@JIRA-Key-MANUSCRIPT-32619
@Gui
Feature: GUI - Favorites - Case Details

  Scenario: User can navigate to a case from favorites menu
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title     |
      | 17 | Another17 |
    And The following favorite cases exist:
      | Case | User          |
      | 17   | Administrator |
    When The user hovers over the "Favorites" menu item in the sidebar
    And The user clicks the "Another17" link in the sidebar menu
    Then The "View Active Case" page is shown
    And The following case details are shown in the "View Active Case" page:
      | Title     |
      | Another17 |
