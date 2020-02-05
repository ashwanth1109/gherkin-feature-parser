@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-31229
@Wiki
Feature: Wiki - Create - Initial Permissions - Clone from another Wiki

  Scenario: Administrator can create a new Wiki: The "Initial Permissions" property is set to the "Clone Wiki <Another Wiki name>" value
    Given The user is logged in as Administrator
    And The following normal user groups exist:
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
    And The following wikis exist:
      | Name                               | Initial Permissions             |
      | FogBugz 5k Rewrite Wiki - Original | Only Site Admins can edit pages |
    And The following permissions exist:
      | Wiki                               | Type                 | Name                   | Read  | Edit  | Admin |
      | FogBugz 5k Rewrite Wiki - Original | Normal User Group    | All Normal Users       | false | true  | false |
      | FogBugz 5k Rewrite Wiki - Original | Normal User Group    | aaa                    | false | false | true  |
      | FogBugz 5k Rewrite Wiki - Original | Normal User Group    | Normal user group A    | true  | false | false |
      | FogBugz 5k Rewrite Wiki - Original | Normal User Group    | Normal user group B    | false | true  | false |
      | FogBugz 5k Rewrite Wiki - Original | Normal User Group    | Normal user group C    | false | false | true  |
      | FogBugz 5k Rewrite Wiki - Original | Normal User          | aaa                    | true  | false | false |
      | FogBugz 5k Rewrite Wiki - Original | Normal User          | Normal user A          | true  | false | false |
      | FogBugz 5k Rewrite Wiki - Original | Normal User          | Normal user B          | false | true  | false |
      | FogBugz 5k Rewrite Wiki - Original | Normal User          | Normal user C          | false | false | true  |
      | FogBugz 5k Rewrite Wiki - Original | Community User Group | aaaaa                  | false | true  |       |
      | FogBugz 5k Rewrite Wiki - Original | Community User Group | Community user group A | true  | false |       |
      | FogBugz 5k Rewrite Wiki - Original | Community User Group | Community user group B | false | true  |       |
      | FogBugz 5k Rewrite Wiki - Original | Community User Group | Community user group C | true  | false |       |
      | FogBugz 5k Rewrite Wiki - Original | Community User       | aaaaa                  | true  | false |       |
      | FogBugz 5k Rewrite Wiki - Original | Community User       | Community user A       | false | true  |       |
      | FogBugz 5k Rewrite Wiki - Original | Community User       | Community user B       | true  | false |       |
      | FogBugz 5k Rewrite Wiki - Original | Community User       | Community user C       | false | true  |       |
    And The "Anonymous Users" permissions are set to the "Edit" value for the "FogBugz 5k Rewrite Wiki - Original" Wiki
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Gear" icon in the "Wiki" section in the sidebar
    And The "Manage Wikis" page is shown
    And The user clicks the "New Wiki" link in the "Manage Wikis" page
    And The "New Wiki" page is shown
    When The user enters the wiki details in the "New Wiki" page:
      | Name                          | Initial Permissions                           |
      | FogBugz 5k Rewrite Wiki - New | Clone Wiki FogBugz 5k Rewrite Wiki - Original |
    And The user clicks the "OK" button in the "New Wiki" page
    Then The user is redirected to the "Manage Wikis" page
    And The following wikis are listed in the "Wikis" table in the "Manage Wikis" page in the following order:
      | Can Edit | Can Delete | Wiki                               | Community Permissions | Public Permissions | Template                   | Tagline |
      | true     | true       | FogBugz 5k Rewrite Wiki - New      | Edit                  | Edit               | FogBugz 8 Default Template |         |
      | true     | true       | FogBugz 5k Rewrite Wiki - Original | Edit                  | Edit               | FogBugz 8 Default Template |         |
    And The user clicks the "Edit" button for the "FogBugz 5k Rewrite Wiki - New" wiki row in the "Wikis" table in the "Manage Wikis" page
    And The user is redirected to the "Edit Wiki" page
    And The user clicks the "Edit Permissions" link in the "Edit Wiki" page
    And The "Permissions" section is shown in the "Edit Wiki" page
    And The following normal users and normal user groups are listed in the "Normal Users" table in the "Permissions" section in the "Edit Wiki" page in the following order:
      | Remove | Type       | Name                | Read  | Modify | Admin |
      | false  | User Group | Site Administrators | false | false  | true  |
      | true   | User Group | All Normal Users    | false | true   | false |
      | true   | User Group | aaa                 | false | false  | true  |
      | true   | User Group | Normal user group A | true  | false  | false |
      | true   | User Group | Normal user group B | false | true   | false |
      | true   | User Group | Normal user group C | false | false  | true  |
      | true   | User       | aaa                 | true  | false  | false |
      | true   | User       | Normal user A       | true  | false  | false |
      | true   | User       | Normal user B       | false | true   | false |
      | true   | User       | Normal user C       | false | false  | true  |
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
