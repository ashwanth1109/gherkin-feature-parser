@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29918
@Wiki
Feature: Wiki - View all

  Scenario: Administrator can view all existing Wikis
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Name                    | Tagline                                |
      | 5k Rewrite Wiki         | First. Second. Third.                  |
      | alpha wiki              | Alpha. Lowercase.                      |
      | FogBugz 5k Rewrite Wiki | First line.\nSecond line.\nThird line. |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    When The user clicks the "Gear" icon in the "Wiki" section in the sidebar
    Then The "Manage Wikis" page is shown
    And The following wikis are listed in the "Wikis" table in the "Manage Wikis" page in the following order:
      | Can Edit | Can Delete | Wiki                    | Community Permissions | Public Permissions | Template                   | Tagline                              |
      | true     | true       | 5k Rewrite Wiki         | None                  | None               | FogBugz 8 Default Template | First. Second. Third.                |
      | true     | true       | alpha wiki              | None                  | None               | FogBugz 8 Default Template | Alpha. Lowercase.                    |
      | true     | true       | FogBugz 5k Rewrite Wiki | None                  | None               | FogBugz 8 Default Template | First line. Second line. Third line. |
