@NotAutomated
@JIRA-Key-MANUSCRIPT-30598
@Planner
Feature: Planner - Case - View Details

  Scenario: User can see case details by clicking on cases in planners milestones
    Given The user is logged in as Administrator
    And The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    When The user clicks the "Welcome to the Planner in FogBugz!" case in the "Intro to FogBugz" milestone in the "Planner" page
    Then The "View Active Case" dialog is shown
    And The following case details are shown in the "View Active Case" dialog:
      | ID | Title                              |
      | 1  | Welcome to the Planner in FogBugz! |
