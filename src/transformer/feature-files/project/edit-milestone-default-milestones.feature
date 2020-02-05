@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-29492
@Project
Feature: Project - Edit - Milestone - Default Milestones

  Scenario: System provides the default all-projects milestones: New project
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    When The user clicks the "Edit" button for the "Ninja" project in the "Projects" section
    Then The "Edit Project" page is shown
    And The following milestones are listed in the "Milestones (all projects)" table in the "Edit Project" page in the following order:
      | Can Edit | Can Delete | Milestone Name | Assignable | Backlog | Completion Date | Start Date | Milestone Dependencies |
      | true     | false      | Undecided      | Yes        | No      | (None)          |            |                        |

  Scenario Outline: System provides the default all-projects milestones: Default projects
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    When The user clicks the "Edit" button for the "<Default Project Name>" project in the "Projects" section
    Then The "Edit Project" page is shown
    And The following milestones are listed in the "Milestones (all projects)" table in the "Edit Project" page in the following order:
      | Can Edit | Can Delete | Milestone Name | Assignable | Backlog | Completion Date | Start Date | Milestone Dependencies |
      | true     | false      | Undecided      | Yes        | No      | (None)          |            |                        |
    Examples:
      | Default Project Name |
      | Onboarding Project   |
      | Inbox                |

  Scenario: System provides the default this-project milestones: Default projects: The "Onboarding Project" project
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    When The user clicks the "Edit" button for the "Onboarding Project" project in the "Projects" section
    Then The "Edit Project" page is shown
    And The following milestones are listed in the "Milestones (this project)" table in the "Edit Project" page in the following order:
      | Can Edit | Can Delete | Milestone Name      | Assignable | Backlog | Completion Date | Start Date | Milestone Dependencies |
      | true     | false      | Configure further   | Yes        | No      | (None)          |            |                        |
      | true     | false      | Intro to FogBugz    | Yes        | Yes     | (None)          |            |                        |
      | true     | false      | More resources      | Yes        | No      | (None)          |            |                        |
      | true     | false      | Set up your account | Yes        | No      | (None)          |            |                        |

  Scenario: System does not provide the default this-project milestones: Default projects: The "Inbox" project
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Projects" menu item in the sidebar menu
    When The user clicks the "Edit" button for the "Inbox" project in the "Projects" section
    Then The "Edit Project" page is shown
    And The following milestones are listed in the "Milestones (this project)" table in the "Edit Project" page in the following order:
      | Can Edit | Can Delete | Milestone Name | Assignable | Backlog | Completion Date | Start Date | Milestone Dependencies |
