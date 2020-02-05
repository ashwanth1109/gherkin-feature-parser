@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29317
@Project
Feature: Project - Edit - Milestone - View all

  Scenario: Administrator can view milestones of a project
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name       | Completion Date | Backlog | Start Date | Start Date Note       |
      | Ninja   | true         | false        | Making a banana trap | 5/16/2022       | false   | 5/15/2022  | It starts not so soon |
      | Ninja   | false        | true         | Throw a hurricane    | 5/16/2022       | false   | 5/15/2022  | It starts soon        |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    When The user clicks the "Edit" button for the "Ninja" project in the "Projects" section
    Then The "Edit Project" page is shown
    And The user clicks the "Create New Milestone" button in the "Milestones (all projects)" table in the "Edit Project" page
    And The following milestones are listed in the "Milestones (all projects)" table in the "Edit Project" page in the following order:
      | Edit | Can Delete | Milestone Name       | Assignable | Backlog | Completion Date | Start Date                        |
      | true | false      | Undecided            | true       | false   | (None)          |                                   |
      | true | false      | Making a banana trap | true       | false   | 5/16/2022       | 5/15/2022 (It starts not so soon) |
    And The following milestones are listed in the "Milestones (this project)" table in the "Edit Project" page in the following order:
      | Edit | Can Delete | Milestone Name    | Assignable | Backlog | Completion Date | Start Date                 |
      | true | false      | Throw a hurricane | true       | false   | 5/16/2022       | 5/15/2022 (It starts soon) |
