@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29920
@Wiki
Feature: Wiki - Delete

  Scenario: Administrator can delete an existing Wiki: One of many
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Name                    |
      | 5k Rewrite Wiki         |
      | alpha wiki              |
      | FogBugz 5k Rewrite Wiki |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Gear" icon in the "Wiki" section in the sidebar
    And The "Manage Wikis" page is shown
    And The user clicks the "Delete" button for the "alpha wiki" wiki row in the "Wikis" table in the "Manage Wikis" page
    And The "Delete Wiki" confirmation dialog is opened
    When The user clicks the "Yes" button in the "Delete Wiki" confirmation dialog
    Then The "Delete Wiki" confirmation dialog is closed
    And The following wikis are listed in the "Wikis" table in the "Manage Wikis" page in the following order:
      | Can Edit | Can Delete | Wiki                    | Community Permissions | Public Permissions | Template                   | Tagline |
      | true     | true       | 5k Rewrite Wiki         | None                  | None               | FogBugz 8 Default Template |         |
      | true     | true       | FogBugz 5k Rewrite Wiki | None                  | None               | FogBugz 8 Default Template |         |

  Scenario: Administrator can delete an existing Wiki: Single
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Name       |
      | alpha wiki |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Gear" icon in the "Wiki" section in the sidebar
    And The "Manage Wikis" page is shown
    And The user clicks the "Delete" button for the "alpha wiki" wiki row in the "Wikis" table in the "Manage Wikis" page
    And The "Delete Wiki" confirmation dialog is opened
    When The user clicks the "Yes" button in the "Delete Wiki" confirmation dialog
    Then The "Delete Wiki" confirmation dialog is closed
    And The following wikis are listed in the "Wikis" table in the "Manage Wikis" page in the following order:
      | Can Edit | Can Delete | Wiki             | Community Permissions | Public Permissions | Template | Tagline | Column Span |
      |          |            | No records found |                       |                    |          |         | 6           |
