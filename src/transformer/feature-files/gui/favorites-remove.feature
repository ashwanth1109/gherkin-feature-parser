@NotAutomated
@JIRA-Key-MANUSCRIPT-32618
@Gui
Feature: GUI - Favorites - Remove

  Scenario: User can unfavorite a case from case page using top panel
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title     |
      | 17 | Another17 |
    And The following favorite cases exist:
      | Case | User          |
      | 17   | Administrator |
    When The user searches for the "17" search string by using the search box
    And The user clicks the "Star" button in the top panel in the "View Active Case" page
    And The user hovers over the "Favorites" menu item in the sidebar
    Then The following details are shown in the "Cases" section in the sidebar menu:
      | Favorite | Case |
      |          |      |

  Scenario: User can unfavorite a case from case page using bottom panel
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title     |
      | 17 | Another17 |
    And The following favorite cases exist:
      | Case | User          |
      | 17   | Administrator |
    When The user searches for the "17" search string by using the search box
    And The user clicks the "Star" button in the bottom panel in the "View Active Case" page
    And The user hovers over the "Favorites" menu item in the sidebar
    Then The following details are shown in the "Cases" section in the sidebar menu:
      | Favorite | Case |
      |          |      |

  Scenario: User can unfavorite a case from favorites sidebar menu
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title     |
      | 17 | Another17 |
    And The following favorite cases exist:
      | Case | User          |
      | 17   | Administrator |
    When The user hovers over the "Favorites" menu item in the sidebar
    And The user clicks the "Star" button for the "Another17" case in the sidebar menu
    And The user hovers over the "Favorites" menu item in the sidebar
    Then The following details are shown in the "Cases" section in the sidebar menu:
      | Favorite | Case |
      |          |      |
