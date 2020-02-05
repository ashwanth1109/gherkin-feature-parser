@NotAutomated
@JIRA-Key-MANUSCRIPT-30560
@Planner
Feature: Planner - Navigate

  Scenario: User can open kanban board directly from main menu
    Given The user is logged in as Administrator
    When The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "Kanban Board" menu item in the sidebar menu
    Then The "Kanban Board" page is shown

  Scenario: User can open planners directly from main menu
    Given The user is logged in as Administrator
    When The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "Onboarding Planner" menu item in the sidebar menu
    Then The "Planner" page is shown

  Scenario: User can navigate to the "Manage Planners" dialog
    Given The user is logged in as Administrator
    When The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "..." menu item in the sidebar menu
    And The user clicks the "Manage Planners" link in the sidebar menu
    Then The "Manage Planners" dialog is shown

  Scenario: User can navigate to the "Manage Planners" dialog through dropdown in the Planners page
    Given The user is logged in as Administrator
    When The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "Onboarding Planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Planner" dropdown in the "Planner" page
    And The user clicks the "Manage Planners" link in the "Planner" dropdown in the "Planner" page
    Then The "Manage Planners" dialog is shown

