@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29607
@ProjectGroup
Feature: Project group - View all

  Scenario: Administrator can view all existing project groups
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
    When The user clicks the "Projects" menu item in the sidebar menu
    Then The "Projects" page is shown
    And The following project groups are listed in the "Project Groups" table in the "Projects" page in the following order:
      | Name                 | Description                                       | Projects                                                                                           |
      | 5k Rewrites          | Rewriting a product in 5k lines of code.          | FogBugz 5k Rewrite, Turnkey Converged Billing 5k Rewrite, turnkey Converged Billing 5k Rewrite - 2 |
      | Alpha projects       | The alpha group.                                  | FogBugz 5k Rewrite                                                                                 |
      | Beta projects        | The beta group.                                   | FogBugz 5k Rewrite                                                                                 |
      | Business projects    | The business-related group.                       |                                                                                                    |
      | Key company projects | The group of the most important company projects. | Code Analyzer, FogBugz 5k Rewrite                                                                  |
      | Program projects     |                                                   | Turnkey Converged Billing 5k Rewrite, turnkey Converged Billing 5k Rewrite - 2                     |
      | programs             |                                                   | Turnkey Converged Billing 5k Rewrite, turnkey Converged Billing 5k Rewrite - 2                     |
      | Software projects    |                                                   |                                                                                                    |
