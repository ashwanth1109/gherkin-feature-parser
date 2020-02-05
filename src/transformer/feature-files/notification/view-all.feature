@NotAutomated
@JIRA-Key-MANUSCRIPT-31868
@Notification
Feature: Notification - View All

  Scenario: User can view all notifications from sidebar menu
    Given The user is logged in as Administrator
    And The following notifications exist:
      | Type   | Title                                          | Description              | Item   | Date                            | Read |
      | Assign | 16: Intro Case for Administrator               | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 15: Additional resources for Support Teams     | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 14: Additional resources for Project Managers  | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 13: Additional resources for Developers        | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 12: Let us know if you have questions          | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 11: Add users to your trial                    | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 10: Group cases by clicking the dropdown above | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 9: Integrate FogBugz with your favorite tools  | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 8: Set up your help desk                       | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 7: Update the status of your cases             | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 6: This is a case (click me for more detail)   | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 5: Find your data through search and filters   | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 4: Use Kanban to create a lightweight workflow | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 3: Create your own Planner                     | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 2: Create your first project(s)                | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 1: Welcome to the Planner in FogBugz!          | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
    And The user hovers over the "Notifications" icon in the sidebar
    When The user clicks the "See all" link in the sidebar menu
    Then The user is redirected to the "Notifications" page
    And The following notifications are shown in the "Notifications" page in the following order:
      | Type   | Title                                          | Description              | Item   | Date                            | Read |
      | Assign | 16: Intro Case for Administrator               | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 15: Additional resources for Support Teams     | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 14: Additional resources for Project Managers  | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 13: Additional resources for Developers        | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 12: Let us know if you have questions          | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 11: Add users to your trial                    | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 10: Group cases by clicking the dropdown above | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 9: Integrate FogBugz with your favorite tools  | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 8: Set up your help desk                       | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 7: Update the status of your cases             | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 6: This is a case (click me for more detail)   | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 5: Find your data through search and filters   | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 4: Use Kanban to create a lightweight workflow | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 3: Create your own Planner                     | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 2: Create your first project(s)                | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
      | Assign | 1: Welcome to the Planner in FogBugz!          | FogBugz assigned to you. | Assign | "Current Date within 5 minutes" | true |
