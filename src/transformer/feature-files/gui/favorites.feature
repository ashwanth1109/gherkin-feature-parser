@NotAutomated
@JIRA-Key-MANUSCRIPT-31698
@Gui
Feature: GUI - Favorites

  Scenario: User can see favourite cases in the favourites sidebar menu
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title |
      | 17   | BugR  |
    And The following favorite cases exist:
      | Case | User          |
      | 17   | Administrator |
    When The user hovers over the "Favorites" menu item in the sidebar
    Then The following details are shown in the "Cases" section in the sidebar menu:
      | Favorite | Case |
      | true     | BugR |

  Scenario: Information message is shown when user has no favorites cases
    Given The user is logged in as Administrator
    When The user hovers over the "Favorites" menu item in the sidebar
    Then The "Click the star icon on cases to add them to this list" message is shown in the "Cases" section in the sidebar menu

  Scenario: User can see no more than 15 favourite cases in the favourites sidebar menu
    Given The user is logged in as Administrator
    And The following cases exist:
      | Case | Title |
      | 17   | Bug17 |
      | 18   | Bug18 |
      | 19   | Bug19 |
      | 20   | Bug20 |
      | 21   | Bug21 |
      | 22   | Bug22 |
      | 23   | Bug23 |
      | 24   | Bug24 |
      | 25   | Bug25 |
      | 26   | Bug26 |
      | 27   | Bug27 |
      | 28   | Bug28 |
      | 29   | Bug29 |
      | 30   | Bug30 |
      | 31   | Bug31 |
      | 32   | Bug32 |
      | 33   | Bug33 |
      | 34   | Bug34 |
      | 35   | Bug35 |
      | 36   | Bug36 |
    And The following favorite cases exist:
      | Case | User          |
      | 17   | Administrator |
      | 18   | Administrator |
      | 19   | Administrator |
      | 20   | Administrator |
      | 21   | Administrator |
      | 22   | Administrator |
      | 23   | Administrator |
      | 24   | Administrator |
      | 25   | Administrator |
      | 26   | Administrator |
      | 27   | Administrator |
      | 28   | Administrator |
      | 29   | Administrator |
      | 30   | Administrator |
      | 31   | Administrator |
      | 32   | Administrator |
      | 33   | Administrator |
      | 34   | Administrator |
      | 35   | Administrator |
      | 36   | Administrator |
    When The user hovers over the "Favorites" menu item in the sidebar
    Then The following details are shown in the "Cases" section in the sidebar menu:
      | Favorite | Case  |
      | true     | Bug22 |
      | true     | Bug23 |
      | true     | Bug24 |
      | true     | Bug25 |
      | true     | Bug26 |
      | true     | Bug27 |
      | true     | Bug28 |
      | true     | Bug29 |
      | true     | Bug30 |
      | true     | Bug31 |
      | true     | Bug32 |
      | true     | Bug33 |
      | true     | Bug34 |
      | true     | Bug35 |
      | true     | Bug36 |
