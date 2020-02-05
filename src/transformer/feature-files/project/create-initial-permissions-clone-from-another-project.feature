@NotAutomated
@JIRA-Key-MANUSCRIPT-29733
@Project
Feature: Project - Create - Initial Permissions - Clone from another project

  Scenario: Administrator can create a new project: The "Initial Permissions" property is set to the "Clone Project <Another project name>" value
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
      | Project Name                  | Initial Permissions               |
      | FogBugz 5k Rewrite - Original | Only Site Admins can manage cases |
    And The following permissions exist:
      | Project                       | Type                 | Name                   | Read  | Modify | Admin | Submit Cases |
      | FogBugz 5k Rewrite - Original | Normal User Group    | All Normal Users       | false | true   | false |              |
      | FogBugz 5k Rewrite - Original | Normal User Group    | aaa                    | false | false  | true  |              |
      | FogBugz 5k Rewrite - Original | Normal User Group    | Normal user group A    | true  | false  | false |              |
      | FogBugz 5k Rewrite - Original | Normal User Group    | Normal user group B    | false | true   | false |              |
      | FogBugz 5k Rewrite - Original | Normal User Group    | Normal user group C    | false | false  | true  |              |
      | FogBugz 5k Rewrite - Original | Normal User          | aaa                    | true  | false  | false |              |
      | FogBugz 5k Rewrite - Original | Normal User          | Normal user A          | true  | false  | false |              |
      | FogBugz 5k Rewrite - Original | Normal User          | Normal user B          | false | true   | false |              |
      | FogBugz 5k Rewrite - Original | Normal User          | Normal user C          | false | false  | true  |              |
      | FogBugz 5k Rewrite - Original | Community User Group | aaaaa                  |       |        |       | true         |
      | FogBugz 5k Rewrite - Original | Community User Group | Community user group A |       |        |       | true         |
      | FogBugz 5k Rewrite - Original | Community User Group | Community user group B |       |        |       | true         |
      | FogBugz 5k Rewrite - Original | Community User Group | Community user group C |       |        |       | true         |
      | FogBugz 5k Rewrite - Original | Community User       | aaaaa                  |       |        |       | true         |
      | FogBugz 5k Rewrite - Original | Community User       | Community user A       |       |        |       | true         |
      | FogBugz 5k Rewrite - Original | Community User       | Community user B       |       |        |       | true         |
      | FogBugz 5k Rewrite - Original | Community User       | Community user C       |       |        |       | true         |
    And The "Anonymous Users" permissions are set to the "Submit Cases" value for the "FogBugz 5k Rewrite - Original" project
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The "Projects" page is shown
    And The user clicks the "Create New Project" link in the "Projects" section in the "Projects" page
    And The "Create New Project" page is shown
    When The user enters the project details in the "Create New Project" page:
      | Project Name             | Initial Permissions                         |
      | FogBugz 5k Rewrite - New | Clone Project FogBugz 5k Rewrite - Original |
    And The user clicks the "OK" button in the "Create New Project" page
    And The user is redirected to the "Edit Project" page
    And The user clicks the "OK" button in the "Edit Project" page
    Then The user is redirected to the "Projects" page
    # NOTE: The "Primary Contact" is the root user — the one who created the current customer instance (tenant).
    And The following projects are listed in the "Projects" table in the "Projects" page in the following order:
      | Can Edit | Can Delete | Project                       | Primary Contact | Project Groups | Workflow         | Description                |
      | true     | true       | FogBugz 5k Rewrite - New      | Administrator   |                | Default Workflow |                            |
      | true     | true       | FogBugz 5k Rewrite - Original | Administrator   |                | Default Workflow |                            |
      | true     | false      | Inbox                         | Administrator   |                | Default Workflow | Inbox for FogBugz Autosort |
      | true     | true       | Onboarding Project            | Administrator   |                | Default Workflow |                            |
    And The user clicks the "Edit" button for the "FogBugz 5k Rewrite - New" project row in the "Projects" table in the "Projects" page
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
