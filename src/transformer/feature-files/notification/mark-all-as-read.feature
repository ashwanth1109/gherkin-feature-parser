@NotAutomated
@JIRA-Key-MANUSCRIPT-31886
@Notification
Feature: Notification - Mark all as read

  Scenario: User can mark all notifications as read
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
    And The user hovers over the "Notifications" icon in the sidebar
    And The user clicks the "See all" link in the sidebar menu
    And The user is redirected to the "Notifications" page
    And The user clicks the "Mark all as read" link in the "Notifications" page
    Then The following notifications are shown in the "Notifications" page in the following order:
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

  Scenario Outline: Mark all as read button is only shown when subscribed, notified, assigned filters are on
    Given The user is logged in as Administrator
    And The user hovers over the "Notifications" icon in the sidebar
    And The user clicks the "See all" link in the sidebar menu
    And The user is redirected to the "Notifications" page
    And The "Mark all as read" link is shown in the "Notifications" page
    When The user clicks the "<Filter Type>" button in the "Notifications" page
    Then The "Mark all as read" link is not shown in the "Notifications" page
    Examples:
      | Filter Type |
      | Assigned    |
      | Subscribed  |
      | Notified    |
