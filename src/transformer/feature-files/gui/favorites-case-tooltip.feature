@NotAutomated
@JIRA-Key-MANUSCRIPT-32620
@Gui
Feature: GUI - Favorites - Case Tooltip

  Scenario: User can see case tooltip from favorites menu
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title     |
      | 17 | Another17 |
    And The following favorite cases exist:
      | Case | User          |
      | 17   | Administrator |
    When The user hovers over the "Favorites" menu item in the sidebar
    And The user hovers over the "Another17" case in the sidebar menu
    Then The "Case Tooltip" is shown
