@NotAutomated
@JIRA-Key-MANUSCRIPT-30563
@Planner
Feature: Planner - Undelete

  Scenario: User can undelete planners
    Given The user is logged in as Administrator
    And The following planners exist:
      | Name         | Projects           | Deleted |
      | My planner   | Onboarding project | true    |
      | My planner 2 | Onboarding project | true    |
    When The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "..." menu item in the sidebar menu
    And The user clicks the "Manage Planners" link in the sidebar menu
    And The "Manage Planners" dialog is shown
    And The user clicks the "Undelete" button for the "My Planner" row in the "Deleted Planners" table in the "Manage Planners" dialog
    Then The following planners are listed in the "Current Planners" table in the "Manage Planners" dialog:
      | Onboarding Planner |
      | My planner         |
    And The following planners are listed in the "Deleted Planners" table in the "Manage Planners" dialog:
      | My planner 2 |
