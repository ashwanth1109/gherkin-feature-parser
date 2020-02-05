@NotAutomated
@JIRA-Key-MANUSCRIPT-32617
@Gui
Feature: Case - Add Favorite

  Scenario: User can favorite a case using top panel
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title     |
      | 17 | Another17 |
    When The user searches for the "17" search string by using the search box
    And The user clicks the "Star" button in the top panel in the "View Active Case" page
    And The user hovers over the "Favorites" menu item in the sidebar
    Then The following details are shown in the "Cases" section in the sidebar menu:
      | Favorite | Case     |
      | true     | AnotherR |

  Scenario: User can favorite a case using bottom panel
    Given The user is logged in as Administrator
    And The following cases exist:
      | ID | Title     |
      | 17 | Another17 |
    When The user searches for the "17" search string by using the search box
    And The user clicks the "Star" button in the bottom panel in the "View Active Case" page
    And The user hovers over the "Favorites" menu item in the sidebar
    Then The following details are shown in the "Cases" section in the sidebar menu:
      | Favorite | Case     |
      | true     | AnotherR |

