@NotAutomated
@JIRA-Key-MANUSCRIPT-30565
@Planner
Feature: Planner - Switch

  Scenario: User can switch between planners
    Given The user is logged in as Administrator
    And The following planners exist:
      | Planner    | Milestones | Projects           |
      | My planner | Undecided  | Onboarding Project |
    When The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "Onboarding Planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user enters the following details in the "Planner" page:
      | Planner    |
      | My planner |
    Then The following details are shown in the "Planner" page:
      | Planner    | Milestones |
      | My planner | Undecided  |
