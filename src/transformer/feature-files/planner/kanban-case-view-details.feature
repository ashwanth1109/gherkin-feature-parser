@NotAutomated
@JIRA-Key-MANUSCRIPT-31459
@Planner
Feature: Planner - Kanban - Case - View Details

  Scenario: User can see case details by clicking on cases in kanban columns
    Given The user is logged in as Administrator
    And The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Open kanban view" button in the "Hurricane" milestone in the "Planner" page
    And The "Kanban" page is shown
    When The user clicks the "Welcome to the Planner in FogBugz!" case in the "Planned Cases" column
    Then The "View Active Case" dialog is shown
    And The following case details are shown in the "View Active Case" dialog:
      | ID | Title                              |
      | 1  | Welcome to the Planner in FogBugz! |
