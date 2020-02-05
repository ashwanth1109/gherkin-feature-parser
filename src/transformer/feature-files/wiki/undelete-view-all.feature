@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-31230
@Wiki
Feature: Wiki - Undelete - View all

  Scenario: Administrator can view all deleted Wikis: None
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Name                    |
      | 5k Rewrite Wiki         |
      | alpha wiki              |
      | FogBugz 5k Rewrite Wiki |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Gear" icon in the "Wiki" section in the sidebar
    And The "Manage Wikis" page is shown
    When The user clicks the "Undelete wikis" link in the "Manage Wikis" page
    Then The "Undelete Wikis" page is shown
    And The "There are no deleted wikis." message is shown in the "Undelete Wikis" page
    And The "Wikis" table is not shown in the "Manage Wikis" page

  Scenario: Administrator can view all deleted Wikis: Many: Sorted by name
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Name                    | Deleted |
      | FogBugz 5k Rewrite Wiki | true    |
      | alpha wiki              | true    |
      | 5k Rewrite Wiki         | true    |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Gear" icon in the "Wiki" section in the sidebar
    And The "Manage Wikis" page is shown
    When The user clicks the "Undelete wikis" link in the "Manage Wikis" page
    Then The "Undelete Wikis" page is shown
    And The "There are no deleted wikis." message is not shown in the "Undelete Wikis" page
    And The following wikis are listed in the "Wikis" table in the "Undelete wikis" page in the following order:
      | Can Undelete | Headline                |
      | true         | 5k Rewrite Wiki         |
      | true         | alpha wiki              |
      | true         | FogBugz 5k Rewrite Wiki |
