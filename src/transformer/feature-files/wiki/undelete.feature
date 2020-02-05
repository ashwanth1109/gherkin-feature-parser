@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-31231
@Wiki
Feature: Wiki - Undelete

  Scenario: Administrator can undelete a deleted Wiki
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Name                              | Deleted |
      | FogBugz 5k Rewrite Wiki           | false   |
      | FogBugz 5k Rewrite Wiki - Deleted | true    |
      | alpha wiki                        | true    |
      | 5k Rewrite Wiki                   | false   |
      | 5k Rewrite Wiki - Deleted         | true    |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Gear" icon in the "Wiki" section in the sidebar
    And The "Manage Wikis" page is shown
    And The user clicks the "Undelete wikis" link in the "Manage Wikis" page
    And The "Undelete Wikis" page is shown
    When The user clicks the "Undelete" link for the "alpha wiki" wiki row in the "Wikis" table in the "Undelete Wikis" page
    Then The following wikis are listed in the "Wikis" table in the "Undelete wikis" page in the following order:
      | Can Undelete | Headline                          |
      | true         | 5k Rewrite Wiki - Deleted         |
      | true         | FogBugz 5k Rewrite Wiki - Deleted |
    # NOTE: Navigate to the page directly by its URL.
    And The user navigates to the "Manage Wikis" page
    And The following wikis are listed in the "Wikis" table in the "Manage Wikis" page in the following order:
      | Can Edit | Can Delete | Wiki                    | Community Permissions | Public Permissions | Template                   | Tagline |
      | true     | true       | 5k Rewrite Wiki         | None                  | None               | FogBugz 8 Default Template |         |
      | true     | true       | alpha wiki              | None                  | None               | FogBugz 8 Default Template |         |
      | true     | true       | FogBugz 5k Rewrite Wiki | None                  | None               | FogBugz 8 Default Template |         |
    And The user clicks the "Undelete wikis" link in the "Manage Wikis" page
    And The "Undelete Wikis" page is shown
    And The following wikis are listed in the "Wikis" table in the "Undelete wikis" page in the following order:
      | Can Undelete | Headline                          |
      | true         | 5k Rewrite Wiki - Deleted         |
      | true         | FogBugz 5k Rewrite Wiki - Deleted |
