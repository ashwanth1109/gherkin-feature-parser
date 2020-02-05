@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29919
@Wiki
Feature: Wiki - Edit

  Scenario: Administrator can edit an existing Wiki: "Name"
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Name                    |
      | FogBugz 5k Rewrite Wiki |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Gear" icon in the "Wiki" section in the sidebar
    And The "Manage Wikis" page is shown
    And The user clicks the "Edit" button for the "FogBugz 5k Rewrite Wiki" wiki row in the "Wikis" table in the "Manage Wikis" page
    And The user is redirected to the "Edit Wiki" page
    When The user enters the wiki details in the "Edit Wiki" page:
      | Name            |
      | 5k Rewrite Wiki |
    And The user clicks the "OK" button in the "Edit Wiki" page
    Then The user is redirected to the "Manage Wikis" page
    And The following wikis are listed in the "Wikis" table in the "Manage Wikis" page in the following order:
      | Can Edit | Can Delete | Wiki            | Community Permissions | Public Permissions | Template                   | Tagline |
      | true     | true       | 5k Rewrite Wiki | None                  | None               | FogBugz 8 Default Template |         |
