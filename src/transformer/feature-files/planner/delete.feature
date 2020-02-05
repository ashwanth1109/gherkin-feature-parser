@NotAutomated
@JIRA-Key-MANUSCRIPT-30562
@Planner
Feature: Planner - Delete

  Scenario: User can delete planners
    Given The user is logged in as Administrator
    And The following planners exist:
      | Name       | Projects           |
      | My planner | Onboarding project |
    When The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "..." menu item in the sidebar menu
    And The user clicks the "Manage Planners" link in the sidebar menu
    And The "Manage Planners" dialog is shown
    And The user clicks the "Delete" button for the "My Planner" row in the "Current Planners" table in the "Manage Planners" dialog
    Then The following planners are listed in the "Current Planners" table in the "Manage Planners" dialog:
      | Onboarding Planner |
    And The following planners are listed in the "Deleted  Planners" table in the "Manage Planners" dialog:
      | My Planner |
