@NotAutomated
@JIRA-Key-MANUSCRIPT-31866
@Notification
Feature: Notification - Quick Menu - Case link

  Scenario: User can see case details from notifications sidebar menu
    Given The user is logged in as Administrator
    And The following notifications exist:
      | Type   | Title                                          | Read  |
      | Assign | 16: Intro Case for Administrator               | true  |
      | Assign | 15: Additional resources for Support Teams     | false |
      | Assign | 14: Additional resources for Project Managers  | false |
      | Assign | 13: Additional resources for Developers        | false |
      | Assign | 12: Let us know if you have questions          | false |
      | Assign | 11: Add users to your trial                    | false |
      | Assign | 10: Group cases by clicking the dropdown above | false |
      | Assign | 9: Integrate FogBugz with your favorite tools  | false |
      | Assign | 8: Set up your help desk                       | false |
      | Assign | 7: Update the status of your cases             | false |
      | Assign | 6: This is a case (click me for more detail)   | false |
      | Assign | 5: Find your data through search and filters   | false |
      | Assign | 4: Use Kanban to create a lightweight workflow | false |
      | Assign | 3: Create your own Planner                     | false |
      | Assign | 2: Create your first project(s)                | false |
      | Assign | 1: Welcome to the Planner in FogBugz!          | false |
    And The user hovers over the "Notifications" icon in the sidebar
    When The user clicks the "16: Intro Case for Administrator" notification in the sidebar menu
    Then The user is redirected to the "View Active Case" page
    And The following case details are shown in the "View Active Case" page:
      | ID | Title                        |
      | 16 | Intro Case for Administrator |
