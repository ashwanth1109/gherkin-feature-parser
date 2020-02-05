@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29316
@Project
Feature: Project - Edit - Milestone - Delete

  Scenario: Administrator can delete a milestone for the this project
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name    | Completion Date | Backlog | Start Date | Start Date Note | Assignable |
      | Ninja   | false        | true         | Throw a hurricane | 5/16/2022       | false   | 5/15/2022  | It starts soon  | false      |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The user clicks the "Edit" button for the "Ninja" project in the "Projects" section
    And The "Edit" page is shown
    When The user clicks the "Delete" button for the "Throw a hurricane" milestone row in the "Milestones (this project)" table in the "Edit Project" page
    Then The following milestones are listed in the "Milestones (this project)" table in the "Edit Project" page in the following order:
      | Edit  | Deleted | Can Delete | Milestone Name    | Assignable | Backlog | Completion Date | Start Date                 |
      | false | true    | false      | Throw a hurricane | false      | false   | 5/16/2022       | 5/15/2022 (It starts soon) |

  Scenario: Administrator cannot delete an assignable milestone for the this project
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name    | Completion Date | Backlog | Start Date | Start Date Note | Assignable |
      | Ninja   | false        | true         | Throw a hurricane | 5/16/2022       | false   | 5/15/2022  | It starts soon  | true       |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The user clicks the "Edit" button for the "Ninja" project in the "Projects" section
    And The "Edit" page is shown
    When The user clicks the "Delete" button for the "Throw a hurricane" milestone row in the "Milestones (this project)" table in the "Edit Project" page
    Then The "Can't Delete Active Milestone" dialog is opened
    And The following dialog details are shown in the "Can't Delete Active Milestone" dialog:
      | Message                                                                                                    |
      | Ninja: Throw a hurricane is still active. To deactivate it, edit the milestone and set "Assignable" to No. |
    And The user clicks the "OK" button in the "Can't Delete Active Milestone" dialog
    And The following milestones are listed in the "Milestones (this project)" table in the "Edit Project" page in the following order:
      | Edit | Deleted | Can Delete | Milestone Name    | Assignable | Backlog | Completion Date | Start Date                 |
      | true | false   | false      | Throw a hurricane | true       | false   | 5/16/2022       | 5/15/2022 (It starts soon) |

  Scenario: Administrator can delete a milestone for the all projects
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
      | Banana       | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name    | Completion Date | Backlog | Start Date | Start Date Note |
      | Ninja   | true         | false        | Throw a hurricane | 5/16/2022       | false   | 5/15/2022  | It starts soon  |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The user clicks the "Edit" button for the "Ninja" project in the "Projects" section
    And The "Edit" page is shown
    And The user clicks the "Edit" button for the "Throw a hurricane" milestone row in the "Milestones (all projects)" table in the "Edit Project" page
    And The "Edit Milestone" dialog is opened
    And The user enters the following milestone details in the "Edit Milestone" dialog:
      | Assignable |
      | false      |
    And The user clicks the "OK" button in the "Edit Milestone" dialog
    And The user clicks the "OK" button in the "Edit Project" page
    And The "Projects" page is shown
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    And The user clicks the "Edit" button for the "Ninja" project in the "Projects" section
    And The "Edit" page is shown
    When The user clicks the "Delete" button for the "Throw a hurricane" milestone row in the "Milestones (all projects)" table in the "Edit Project" page
    Then The following milestones are listed in the "Milestones (all projects)" table in the "Edit Project" page in the following order:
      | Edit  | Deleted | Can Delete | Milestone Name    | Assignable | Backlog | Completion Date | Start Date                 |
      | false | true    | false      | Throw a hurricane | false      | false   | 5/16/2022       | 5/15/2022 (It starts soon) |
    And The user clicks the "OK" button in the "Edit Project" page
    And The user is redirected to the "Projects" page
    And The user clicks the "Edit" button for the "Banana" project in the "Projects" section
    And The user clicks the "Display Deleted and Unassignable Milestones" link in the "Milestones (all projects)" table in the "Edit Project" page
    And The following milestones are listed in the "Milestones (all projects)" table in the "Edit Project" page in the following order:
      | Edit  | Deleted | Can Delete | Milestone Name    | Assignable | Backlog | Completion Date | Start Date                 |
      | false | true    | false      | Throw a hurricane | false      | false   | 5/16/2022       | 5/15/2022 (It starts soon) |
