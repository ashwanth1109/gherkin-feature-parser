@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29314
@Project
Feature: Project - Edit - Milestone - Create for all projects

  Scenario: Administrator can create a milestone for all projects
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
      | Banana       | Administrator   |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The user clicks the "Edit" button for the "Ninja" project in the "Projects" section
    And The "Edit" page is shown
    When The user clicks the "Create New Milestone" button in the "Milestones (all projects)" table in the "Edit Project" page
    And The "New Milestone" dialog is opened
    And The user enters the following milestone details in the "Create New Milestone" dialog:
      | Milestone Name       | Completion Date | Backlog | Start Date | Start Date Note |
      | Making a banana trap | 5/16/2022       | false   | 5/15/2022  | It starts soon  |
    And The user clicks the "OK" button in the "Create New Milestone" dialog
    Then The "New Milestone" dialog is closed
    And The following milestones are listed in the "Milestones (all projects)" table in the "Edit Project" page in the following order:
      | Edit | Can Delete | Milestone Name       | Assignable | Backlog | Completion Date | Start Date                 |
      | true | false      | Undecided            | true       | false   | (None)          |                            |
      | true | false      | Making a banana trap | true       | false   | 5/16/2022       | 5/15/2022 (It starts soon) |
    And The user clicks the "OK" button in the "Edit Project" page
    And The "Projects" page is shown
    And The user clicks the "Edit" button for the "Banana" project in the "Projects" section
    And The "Edit" page is shown
    And The following milestones are listed in the "Milestones (all projects)" table in the "Edit Project" page in the following order:
      | Edit | Can Delete | Milestone Name       | Assignable | Backlog | Completion Date | Start Date                 |
      | true | false      | Undecided            | true       | false   | 5/16/2020       | 5/15/2022 (It starts soon) |
      | true | false      | Making a banana trap | true       | false   | 5/16/2022       | 5/15/2022 (It starts soon) |
