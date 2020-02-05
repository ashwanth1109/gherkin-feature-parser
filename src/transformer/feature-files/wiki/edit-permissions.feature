@NotAutomated
@JIRA-Key-MANUSCRIPT-31233
@Wiki
Feature: Wiki - Edit - Permissions

  Background:
    Given The user is logged in as Administrator
    And The following wikis exist:
      | Name                    | Initial Permissions             |
      | FogBugz 5k Rewrite Wiki | Only Site Admins can edit pages |

  Scenario: Administrator can edit an existing Wiki: "Permissions"
    Given The following normal user groups exist:
      | Name                | Notes                      |
      | aaa                 | To test order.             |
      | Normal user group A | Normal user group A notes. |
      | Normal user group B | Normal user group B notes. |
      | Normal user group C | Normal user group C notes. |
    And The following users exist:
      | User Group          | Full Name     | Email                     | Password       |
      | aaa                 | AAA           | aaa@fogbugz.com           | GoodPassword1! |
      | Normal user group A | Normal user A | normal-user-a@fogbugz.com | GoodPassword1! |
      | Normal user group B | Normal user B | normal-user-b@fogbugz.com | GoodPassword1! |
      | Normal user group C | Normal user C | normal-user-c@fogbugz.com | GoodPassword1! |
    And The following community user groups exist:
      | Name                   | Notes                         |
      | aaaaa                  | To test order.                |
      | Community user group A | Community user group A notes. |
      | Community user group B | Community user group B notes. |
      | Community user group C | Community user group C notes. |
    And The following community users exist:
      | User Group             | Full Name        | Email                        | Password      |
      | aaaaa                  | AAAAA            | aaaaa@fogbugz.com            | BadPassword0! |
      | Community user group A | Community user A | community-user-a@fogbugz.com | BadPassword0! |
      | Community user group B | Community user B | community-user-b@fogbugz.com | BadPassword0! |
      | Community user group C | Community user C | community-user-c@fogbugz.com | BadPassword0! |
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Gear" icon in the "Wiki" section in the sidebar
    And The "Manage Wikis" page is shown
    And The user clicks the "Edit" button for the "FogBugz 5k Rewrite Wiki" wiki row in the "Wikis" table in the "Manage Wikis" page
    And The user is redirected to the "Edit Wiki" page
    When The user enters the normal users and the normal user groups details in the "Normal Users" table in the "Permissions" section in the "Edit Wiki" page:
      | Type       | Name                | Read  | Edit  | Admin |
      | User Group | aaa                 | false | false | true  |
      | User Group | All Normal Users    | false | true  | false |
      | User Group | Normal user group A | true  | false | false |
      | User Group | Normal user group B | false | true  | false |
      | User Group | Normal user group C | false | false | true  |
      | User       | Normal user A       | true  | false | false |
      | User       | Normal user B       | false | true  | false |
      | User       | Normal user C       | false | false | true  |
      | User       | aaa                 | true  | false | false |
    And The user enters the community users and the community user groups details in the "Community Users" table in the "Permissions" section in the "Edit Wiki" page:
      | Type       | Name                   | Read  | Edit  |
      | User Group | aaaaa                  | false | true  |
      | User Group | Community user group A | true  | false |
      | User Group | Community user group B | false | true  |
      | User Group | Community user group C | true  | false |
      | User       | Community user A       | false | true  |
      | User       | Community user B       | true  | false |
      | User       | Community user C       | false | true  |
      | User       | aaaaa                  | true  | false |
    And The user sets the "Anonymous Users" permissions to the "Edit" value in the "Permissions" section in the "Edit Wiki" page
    And The user clicks the "OK" button in the "Edit Wiki" page
    Then The user is redirected to the "Manage Wikis" page
    And The following wikis are listed in the "Wikis" table in the "Manage Wikis" page in the following order:
      | Can Edit | Can Delete | Wiki                    | Community Permissions | Public Permissions | Template                   | Tagline |
      | true     | true       | FogBugz 5k Rewrite Wiki | Modify                | Modify             | FogBugz 8 Default Template |         |
    And The user clicks the "Edit" button for the "FogBugz 5k Rewrite Wiki" wiki row in the "Wikis" table in the "Manage Wikis" page
    And The user is redirected to the "Edit Wiki" page
    And The following normal users and normal user groups are listed in the "Normal Users" table in the "Permissions" section in the "Edit Wiki" page in the following order:
      | Remove | Type       | Name                | Read  | Edit  | Admin |
      | false  | User Group | Site Administrators | false | false | true  |
      | true   | User Group | All Normal Users    | false | true  | false |
      | true   | User Group | aaa                 | false | false | true  |
      | true   | User Group | Normal user group A | true  | false | false |
      | true   | User Group | Normal user group B | false | true  | false |
      | true   | User Group | Normal user group C | false | false | true  |
      | true   | User       | aaa                 | true  | false | false |
      | true   | User       | Normal user A       | true  | false | false |
      | true   | User       | Normal user B       | false | true  | false |
      | true   | User       | Normal user C       | false | false | true  |
    And The following community users and community user groups are listed in the "Community Users" table in the "Permissions" section in the "Edit Wiki" page in the following order:
      | Remove | Type       | Name                   | Read  | Edit  |
      | true   | User Group | All Community Users    | false | true  |
      | true   | User Group | aaaaa                  | false | true  |
      | true   | User Group | Community user group A | true  | false |
      | true   | User Group | Community user group B | false | true  |
      | true   | User Group | Community user group C | true  | false |
      | true   | User       | aaaaa                  | true  | false |
      | true   | User       | Community user A       | false | true  |
      | true   | User       | Community user B       | true  | false |
      | true   | User       | Community user C       | false | true  |
    And The "Anonymous Users" permissions are set to the "Edit" value in the "Permissions" section in the "Edit Wiki" page

  Scenario: Administrator can edit an existing Wiki: "Community Permissions" and "Public Permissions": Set to "None"
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Gear" icon in the "Wiki" section in the sidebar
    And The "Manage Wikis" page is shown
    And The user clicks the "Edit" button for the "FogBugz 5k Rewrite Wiki" wiki row in the "Wikis" table in the "Manage Wikis" page
    And The user is redirected to the "Edit Wiki" page
    When The user sets the "Anonymous Users" permissions to the "None" value in the "Permissions" section in the "Edit Wiki" page
    And The user clicks the "OK" button in the "Edit Wiki" page
    Then The user is redirected to the "Manage Wikis" page
    And The following wikis are listed in the "Wikis" table in the "Manage Wikis" page in the following order:
      | Can Edit | Can Delete | Wiki                    | Community Permissions | Public Permissions | Template                   | Tagline |
      | true     | true       | FogBugz 5k Rewrite Wiki | None                  | None               | FogBugz 8 Default Template |         |
    And The user clicks the "Edit" button for the "FogBugz 5k Rewrite Wiki" wiki row in the "Wikis" table in the "Manage Wikis" page
    And The user is redirected to the "Edit Wiki" page
    And The following community users and community user groups are listed in the "Community Users" table in the "Permissions" section in the "Edit Wiki" page in the following order:
      | Remove | Type | Name             | Read | Edit | Column Span |
      |        |      | No records found |      |      | 4           |
    And The "Anonymous Users" permissions are set to the "None" value in the "Permissions" section in the "Edit Wiki" page

  Scenario Outline: Administrator can edit an existing Wiki: "Community Permissions" and "Public Permissions": Set to not "None"
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Gear" icon in the "Wiki" section in the sidebar
    And The "Manage Wikis" page is shown
    And The user clicks the "Edit" button for the "FogBugz 5k Rewrite Wiki" wiki row in the "Wikis" table in the "Manage Wikis" page
    And The user is redirected to the "Edit Wiki" page
    When The user sets the "Anonymous Users" permissions to the "<Public Permissions>" value in the "Permissions" section in the "Edit Wiki" page
    And The user enters the community users and the community user groups details in the "Community Users" table in the "Permissions" section in the "Edit Wiki" page:
      | Type       | Name                | Read                       | Edit                       |
      | User Group | All Community Users | <All Community Users Read> | <All Community Users Edit> |
    And The user clicks the "OK" button in the "Edit Wiki" page
    Then The user is redirected to the "Manage Wikis" page
    And The following wikis are listed in the "Wikis" table in the "Manage Wikis" page in the following order:
      | Can Edit | Can Delete | Wiki                    | Community Permissions   | Public Permissions   | Template                   | Tagline |
      | true     | true       | FogBugz 5k Rewrite Wiki | <Community Permissions> | <Public Permissions> | FogBugz 8 Default Template |         |
    And The user clicks the "Edit" button for the "FogBugz 5k Rewrite Wiki" wiki row in the "Wikis" table in the "Manage Wikis" page
    And The user is redirected to the "Edit Wiki" page
    And The following community users and community user groups are listed in the "Community Users" table in the "Permissions" section in the "Edit Wiki" page in the following order:
      | Remove | Type       | Name                | Read                       | Edit                       |
      | true   | User Group | All Community Users | <All Community Users Read> | <All Community Users Edit> |
    And The "Anonymous Users" permissions are set to the "<Public Permissions>" value in the "Permissions" section in the "Edit Wiki" page
    Examples:
      | All Community Users Read | All Community Users Edit | Community Permissions | Public Permissions |
      | true                     | false                    | Read                  | None               |
      | true                     | false                    | Read                  | Read               |
      | true                     | false                    | Read                  | Edit               |
      | false                    | true                     | Edit                  | None               |
      | false                    | true                     | Edit                  | Read               |
      | false                    | true                     | Edit                  | Edit               |
