@NotAutomated
@JIRA-Key-MANUSCRIPT-31025
@Planner
Feature: Planner - View Options - Filter By Project - Adding a project checks it by default

  Scenario: Adding a project to the planner adds it to view options
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name | Completion Date | Backlog | Start Date | Start Date Note |
      | Ninja   | false        | true         | Hurricane      | 5/16/2022       | false   | 5/15/2022  | It starts soon  |
    And The following planners exist:
      | Planner    | Milestones | Projects                  |
      | My planner | Hurricane  | Onboarding Project |
    And The following project areas exist:
      | Project | Can Delete | Area | Primary Contact |
      | Ninja   | true       | Ahou | Administrator   |
    When The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Edit Planner Settings" link in the "Planner" page
    And The user clicks the "Add another Project..." link in the "Edit Planner" dialog
    And The user enters the following details in the "Projects" dropdown in the "Edit Planner" dialog:
      | Ninja |
    And The user clicks the "Save" button in the "Edit Planner" dialog
    And The user clicks the "Show View Options" link in the "Planner" page
    Then The "View Options" dialog is shown
    And The following details are shown in the "View Options" dialog:
      | Filter by Project         | Filter by Area | Display |
      | Onboarding Project, Ninja | All Areas      | Hours   |
    And The user clicks the "Filter by Area" dropdown in the "View Options" dialog
    And The following projects are listed in the "Filter by Area" dropdown in the "View Options" dialog:
      | All Areas                      |
      | Onboarding Project: Guidelines |
      | Onboarding Project: Resources  |
      | Ninja: Ahou                    |
