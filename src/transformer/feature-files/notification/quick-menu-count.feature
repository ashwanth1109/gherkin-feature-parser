@NotAutomated
@JIRA-Key-MANUSCRIPT-31864
@Notification
Feature: Notification - Quick Menu - Notification count

  Scenario: User can see the notifications count in the sidebar
    Given The user is logged in as Administrator
    When The following notifications exist:
      | Type   | Title                                          | Read  |
      | Assign | 16: Intro Case for Administrator               | false |
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
    Then The notification count is 16 in the sidebar menu

  Scenario: User can see the notifications count when there are read notifications in the sidebar
    Given The user is logged in as Administrator
    When The following notifications exist:
      | Type   | Title                                          | Read  |
      | Assign | 16: Intro Case for Administrator               | true  |
      | Assign | 15: Additional resources for Support Teams     | true  |
      | Assign | 14: Additional resources for Project Managers  | true  |
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
    Then The notification count is 13 in the sidebar menu

  Scenario: User can see notifications count in the sidebar menu
    Given The user is logged in as Administrator
    When The following notifications exist:
      | Type   | Title                                          | Read  |
      | Assign | 16: Intro Case for Administrator               | true  |
      | Assign | 15: Additional resources for Support Teams     | true  |
      | Assign | 14: Additional resources for Project Managers  | true  |
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
    Then The "See all (16 unread notifications)" link is shown in the sidebar menu

  Scenario: Zero notifications link is plural
    Given The user is logged in as Administrator
    When The following notifications exist:
      | Type   | Title                                          | Read |
      | Assign | 16: Intro Case for Administrator               | true |
      | Assign | 15: Additional resources for Support Teams     | true |
      | Assign | 14: Additional resources for Project Managers  | true |
      | Assign | 13: Additional resources for Developers        | true |
      | Assign | 12: Let us know if you have questions          | true |
      | Assign | 11: Add users to your trial                    | true |
      | Assign | 10: Group cases by clicking the dropdown above | true |
      | Assign | 9: Integrate FogBugz with your favorite tools  | true |
      | Assign | 8: Set up your help desk                       | true |
      | Assign | 7: Update the status of your cases             | true |
      | Assign | 6: This is a case (click me for more detail)   | true |
      | Assign | 5: Find your data through search and filters   | true |
      | Assign | 4: Use Kanban to create a lightweight workflow | true |
      | Assign | 3: Create your own Planner                     | true |
      | Assign | 2: Create your first project(s)                | true |
      | Assign | 1: Welcome to the Planner in FogBugz!          | true |
    And The user hovers over the "Notifications" icon in the sidebar
    Then The "See all (0 unread notifications)" link is shown in the sidebar menu

  Scenario: One unread notification has singular link
    Given The user is logged in as Administrator
    When The following notifications exist:
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
    Then The "See all (1 unread notification)" link is shown in the sidebar menu
