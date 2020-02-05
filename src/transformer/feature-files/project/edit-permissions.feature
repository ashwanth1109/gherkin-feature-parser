@NotAutomated
@JIRA-Key-MANUSCRIPT-29763
@Project
Feature: Project - Edit - Permissions

  Scenario: Administrator can edit an existing project: "Permissions"
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
    And The following projects exist:
      | Project Name       | Initial Permissions               |
      | FogBugz 5k Rewrite | Only Site Admins can manage cases |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The "Projects" page is shown
    And The user clicks the "Edit" button for the "FogBugz 5k Rewrite" project row in the "Projects" table in the "Projects" page
    And The user is redirected to the "Edit Project" page
    When The user enters the normal users and the normal user groups details in the "Normal Users" table in the "Permissions" section in the "Edit Project" page:
      | Type       | Name                | Read  | Modify | Admin |
      | User Group | aaa                 | false | false  | true  |
      | User Group | All Normal Users    | false | true   | false |
      | User Group | Normal user group A | true  | false  | false |
      | User Group | Normal user group B | false | true   | false |
      | User Group | Normal user group C | false | false  | true  |
      | User       | Normal user A       | true  | false  | false |
      | User       | Normal user B       | false | true   | false |
      | User       | Normal user C       | false | false  | true  |
      | User       | aaa                 | true  | false  | false |
    And The user enters the community users and the community user groups details in the "Community Users" table in the "Permissions" section in the "Edit Project" page:
      | Type       | Name                   |
      | User Group | aaaaa                  |
      | User Group | Community user group A |
      | User Group | Community user group B |
      | User Group | Community user group C |
      | User       | Community user A       |
      | User       | Community user B       |
      | User       | Community user C       |
      | User       | aaaaa                  |
    And The user sets the "Anonymous Users" permissions to the "Submit Cases" value in the "Permissions" section in the "Edit Project" page
    And The user clicks the "OK" button in the "Edit Project" page
    Then The user is redirected to the "Projects" page
    And The following projects are listed in the "Projects" table in the "Projects" page in the following order:
      | Can Edit | Can Delete | Project            | Primary Contact | Project Groups | Workflow         | Description                |
      | true     | true       | FogBugz 5k Rewrite | Administrator   |                | Default Workflow |                            |
      | true     | false      | Inbox              | Administrator   |                | Default Workflow | Inbox for FogBugz Autosort |
      | true     | true       | Onboarding Project | Administrator   |                | Default Workflow |                            |
    And The user clicks the "Edit" button for the "FogBugz 5k Rewrite" project row in the "Projects" table in the "Projects" page
    And The user is redirected to the "Edit Project" page
    And The following normal users and normal user groups are listed in the "Normal Users" table in the "Permissions" section in the "Edit Project" page in the following order:
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
    And The following community users and community user groups are listed in the "Community Users" table in the "Permissions" section in the "Edit Project" page in the following order:
      | Remove | Type       | Name                   | Submit Cases |
      | true   | User Group | All Community Users    | true         |
      | true   | User Group | aaaaa                  | true         |
      | true   | User Group | Community user group A | true         |
      | true   | User Group | Community user group B | true         |
      | true   | User Group | Community user group C | true         |
      | true   | User       | aaaaa                  | true         |
      | true   | User       | Community user A       | true         |
      | true   | User       | Community user B       | true         |
      | true   | User       | Community user C       | true         |
    And The "Anonymous Users" permissions are set to the "Submit Cases" value in the "Permissions" section in the "Edit Project" page
