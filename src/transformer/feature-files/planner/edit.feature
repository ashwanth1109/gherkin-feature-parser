@NotAutomated
@JIRA-Key-MANUSCRIPT-30564
@Planner
Feature: Planner - Edit

  Scenario: User can edit existing planners through planner settings
    Given The user is logged in as Administrator
    When The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "Onboarding Planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Edit Planner Settings" link in the "Planner" page
    And The "Edit Planner" dialog is shown
    And The user enters the following details in the "Edit Planner" dialog:
      | Name     |
      | New name |
    And The user clicks the "Save" button in the "Edit Planner" dialog
    Then The following details are shown in the "Planner" page:
      | Planner  |
      | New name |

  Scenario: User can add projects when editing planners through planner settings
    Given The user is logged in as Administrator
    And The following planners exist:
      | Planner    | Milestones | Projects           |
      | My planner | Undecided  | Onboarding Project |
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
    And The following cases exist:
      | Case | Title                      | Project            | Milestone |
      | 17   | Case in onboarding project | Onboarding Project | Undecided |
      | 18   | Case in ninja project      | Ninja              | Undecided |
    When The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Edit Planner Settings" link in the "Planner" page
    And The "Edit Planner" dialog is shown
    And The user clicks the "Add another Project..." link in the "Edit Planner" dialog
    And The user enters the following details in the "Projects" dropdown in the "Edit Planner" dialog:
      | Ninja |
    And The user clicks the "Save" button in the "Edit Planner" dialog
    Then The following cases are shown in the "Undecided" milestone in the "Planner" page:
      | Case in onboarding project |
      | Case in ninja project      |
