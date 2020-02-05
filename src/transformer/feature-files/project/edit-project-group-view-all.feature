@NotAutomated
@JIRA-Key-MANUSCRIPT-29820
@Project
Feature: Project - Edit - Project group - View all

  Scenario: Administrator can edit an existing project: View all project groups of the project
    Given The user is logged in as Administrator
    And The following project groups exist:
      | Name                      | Description                         |
      | 5k Rewrites               | The 5k Rewrites.                    |
      | Greatest company projects | The most valuable company projects. |
      | Software                  | The software projects.              |
      | 1k Rewrites               | The 1k Rewrites.                    |
      | greatest                  | Lowercase Greatest!                 |
    And The following projects exist:
      | Project Name       | Project Groups                                                          |
      | FogBugz 5k Rewrite | 5k Rewrites, Greatest company projects, Software, 1k Rewrites, greatest |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The "Projects" page is shown
    When The user clicks the "Edit" button for the "FogBugz 5k Rewrite" project row in the "Projects" table in the "Projects" page
    Then The user is redirected to the "Edit Project" page
    And The following project groups are listed in the "Project Groups" table in the "Edit Project" page in the following order:
      | Remove | Project Group             | Description                         |
      | true   | 1k Rewrites               | The 1k Rewrites.                    |
      | true   | 5k Rewrites               | The 5k Rewrites.                    |
      | true   | greatest                  | Lowercase Greatest!                 |
      | true   | Greatest company projects | The most valuable company projects. |
      | true   | Software                  | The software projects.              |
