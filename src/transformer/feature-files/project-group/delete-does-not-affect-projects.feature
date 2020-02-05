@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29218
@ProjectGroup
Feature: Project group - Delete - Does not affect projects

  Scenario: Administrator can delete an existing project group and the deletion does not affect the projects that belonged to the project group
    Given The user is logged in as Administrator
    And The following project groups exist:
      | Name                 | Description                                       |
      | 5k Rewrites          | Rewriting a product in 5k lines of code.          |
      | Alpha projects       | The alpha group.                                  |
      | Beta projects        | The beta group.                                   |
      | Business projects    | The business-related group.                       |
      | Key company projects | The group of the most important company projects. |
      | Program projects     |                                                   |
      | programs             |                                                   |
      | Software projects    |                                                   |
    And The following projects exist:
      | Project Name                             | Primary Contact | Project Groups                                                   |
      | Code Analyzer                            | Administrator   | Key company projects                                             |
      | FogBugz 5k Rewrite                       | Administrator   | 5k Rewrites, Alpha projects, Beta projects, Key company projects |
      | Turnkey Converged Billing 5k Rewrite     | Administrator   | 5k Rewrites, Program projects, programs                          |
      | turnkey Converged Billing 5k Rewrite - 2 | Administrator   | 5k Rewrites, Program projects, programs                          |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The "Projects" page is shown
    When The user clicks the "Delete" button for the "5k Rewrites" project group row in the "Project Groups" table in the "Projects" page
    And The "Delete Project Group" confirmation dialog is opened
    And The user clicks the "OK" button in the "Delete Project Group" confirmation dialog
    Then The "Delete Project Group" confirmation dialog is closed
    And The following projects are listed in the "Projects" table in the "Projects" page in the following order:
      | Project Name                             | Primary Contact | Project Groups                                      |
      | Code Analyzer                            | Administrator   | Key company projects                                |
      | FogBugz 5k Rewrite                       | Administrator   | Alpha projects, Beta projects, Key company projects |
      | Turnkey Converged Billing 5k Rewrite     | Administrator   | Program projects, programs                          |
      | turnkey Converged Billing 5k Rewrite - 2 | Administrator   | Program projects, programs                          |
