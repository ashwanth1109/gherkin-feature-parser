@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29916
@Wiki
Feature: Wiki - Create

  Scenario: Administrator can create a new Wiki: "Name"
    Given The user is logged in as Administrator
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Gear" icon in the "Wiki" section in the sidebar
    And The "Manage Wikis" page is shown
    And The user clicks the "New Wiki" link in the "Manage Wikis" page
    And The "New Wiki" page is shown
    When The user enters the wiki details in the "New Wiki" page:
      | Name                    |
      | FogBugz 5k Rewrite Wiki |
    And The user clicks the "OK" button in the "New Wiki" page
    Then The user is redirected to the "Manage Wikis" page
    And The following wikis are listed in the "Wikis" table in the "Manage Wikis" page in the following order:
      | Can Edit | Can Delete | Wiki                    | Community Permissions | Public Permissions | Template                   | Tagline |
      | true     | true       | FogBugz 5k Rewrite Wiki | None                  | None               | FogBugz 8 Default Template |         |
