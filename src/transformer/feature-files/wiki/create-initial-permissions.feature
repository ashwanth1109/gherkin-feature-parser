@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-32507
@Wiki
Feature: Wiki - Create - Initial Permissions

  Background:
    Given The user is logged in as Administrator
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Gear" icon in the "Wiki" section in the sidebar
    And The "Manage Wikis" page is shown
    And The user clicks the "New Wiki" link in the "Manage Wikis" page
    And The "New Wiki" page is shown

  Scenario: Administrator can create a new Wiki: The "Initial Permissions" property is set to the "Only Site Admins can edit pages" value
    When The user enters the wiki details in the "New Wiki" page:
      | Name                    | Initial Permissions             |
      | FogBugz 5k Rewrite Wiki | Only Site Admins can edit pages |
    And The user clicks the "OK" button in the "New Wiki" page
    Then The user is redirected to the "Manage Wikis" page
    And The following wikis are listed in the "Wikis" table in the "Manage Wikis" page in the following order:
      | Can Edit | Can Delete | Wiki                    | Community Permissions | Public Permissions | Template                   | Tagline |
      | true     | true       | FogBugz 5k Rewrite Wiki | None                  | None               | FogBugz 8 Default Template |         |
    And The user clicks the "Edit" button for the "FogBugz 5k Rewrite Wiki" wiki row in the "Wikis" table in the "Manage Wikis" page
    And The user is redirected to the "Edit Wiki" page
    And The user clicks the "Edit Permissions" link in the "Edit Wiki" page
    And The "Permissions" section is shown in the "Edit Wiki" page
    And The following normal users and normal user groups are listed in the "Normal Users" table in the "Permissions" section in the "Edit Wiki" page in the following order:
      | Remove | Type       | Name                | Read  | Edit  | Admin |
      | false  | User Group | Site Administrators | false | false | true  |
    And The following community users and community user groups are listed in the "Community Users" table in the "Permissions" section in the "Edit Wiki" page in the following order:
      | Remove | Type | Name             | Read | Edit | Column Span |
      |        |      | No records found |      |      | 4           |
    And The "Anonymous Users" permissions are set to the "None" value in the "Permissions" section in the "Edit Wiki" page

  Scenario: Administrator can create a new Wiki: The "Initial Permissions" property is set to the "All Normal Users can edit pages" value
    When The user enters the wiki details in the "New Wiki" page:
      | Name                    | Initial Permissions             |
      | FogBugz 5k Rewrite Wiki | All Normal Users can edit pages |
    And The user clicks the "OK" button in the "New Wiki" page
    Then The user is redirected to the "Manage Wikis" page
    And The following wikis are listed in the "Wikis" table in the "Manage Wikis" page in the following order:
      | Can Edit | Can Delete | Wiki                    | Community Permissions | Public Permissions | Template                   | Tagline |
      | true     | true       | FogBugz 5k Rewrite Wiki | None                  | None               | FogBugz 8 Default Template |         |
    And The user clicks the "Edit" button for the "FogBugz 5k Rewrite Wiki" wiki row in the "Wikis" table in the "Manage Wikis" page
    And The user is redirected to the "Edit Wiki" page
    And The user clicks the "Edit Permissions" link in the "Edit Wiki" page
    And The "Permissions" section is shown in the "Edit Wiki" page
    And The following normal users and normal user groups are listed in the "Normal Users" table in the "Permissions" section in the "Edit Wiki" page in the following order:
      | Remove | Type       | Name                | Read  | Edit  | Admin |
      | false  | User Group | Site Administrators | false | false | true  |
      | true   | User Group | All Normal Users    | false | true  | false |
    And The following community users and community user groups are listed in the "Community Users" table in the "Permissions" section in the "Edit Wiki" page in the following order:
      | Remove | Type | Name             | Read | Edit | Column Span |
      |        |      | No records found |      |      | 4           |
    And The "Anonymous Users" permissions are set to the "None" value in the "Permissions" section in the "Edit Wiki" page
