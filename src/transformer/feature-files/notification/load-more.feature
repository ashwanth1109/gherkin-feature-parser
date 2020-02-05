@NotAutomated
@JIRA-Key-MANUSCRIPT-31869
@Notification
Feature: Notification - Load More

  Scenario: User can load more notifications in notifications page
    Given The user is logged in as Administrator
    And The following users exist:
      | Full name | Email         | Password |
      | lk        | lk@jungle.com | fb123    |
    And The user logs out
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email         | Password |
      | lk@jungle.com | fb123    |
    And The following cases exist:
      | ID | Title   | Assigned To   |
      | 18 | Case 18 | Administrator |
      | 19 | Case 19 | Administrator |
      | 20 | Case 20 | Administrator |
      | 21 | Case 21 | Administrator |
      | 22 | Case 22 | Administrator |
    And The user logs out
    And The user is logged in as Administrator
    And The user hovers over the "Notifications" icon in the sidebar
    And The user clicks the "See all" link in the sidebar menu
    And The user is redirected to the "Notifications" page
    And The following notifications are shown in the "Notifications" page in the following order:
      | Type   | Title                                          | Read  |
      | Assign | 22: Case 22                                    | false |
      | Assign | 21: Case 21                                    | false |
      | Assign | 20: Case 20                                    | false |
      | Assign | 19: Case 19                                    | false |
      | Assign | 18: Case 18                                    | false |
      | Assign | 16: Intro Case for Administrator               | true  |
      | Assign | 15: Additional resources for Support Teams     | true  |
      | Assign | 14: Additional resources for Project Managers  | true  |
      | Assign | 13: Additional resources for Developers        | true  |
      | Assign | 12: Let us know if you have questions          | true  |
      | Assign | 11: Add users to your trial                    | true  |
      | Assign | 10: Group cases by clicking the dropdown above | true  |
      | Assign | 9: Integrate FogBugz with your favorite tools  | true  |
      | Assign | 8: Set up your help desk                       | true  |
      | Assign | 7: Update the status of your cases             | true  |
      | Assign | 6: This is a case (click me for more detail)   | true  |
      | Assign | 5: Find your data through search and filters   | true  |
      | Assign | 4: Use Kanban to create a lightweight workflow | true  |
      | Assign | 3: Create your own Planner                     | true  |
      | Assign | 2: Create your first project(s)                | true  |
    When The user clicks the "Load more" link in the "Notifications" page
    Then The following notifications are shown in the "Notifications" page in the following order:
      | Type   | Title                                          | Read  |
      | Assign | 22: Case 22                                    | false |
      | Assign | 21: Case 21                                    | false |
      | Assign | 20: Case 20                                    | false |
      | Assign | 19: Case 19                                    | false |
      | Assign | 18: Case 18                                    | false |
      | Assign | 16: Intro Case for Administrator               | true  |
      | Assign | 15: Additional resources for Support Teams     | true  |
      | Assign | 14: Additional resources for Project Managers  | true  |
      | Assign | 13: Additional resources for Developers        | true  |
      | Assign | 12: Let us know if you have questions          | true  |
      | Assign | 11: Add users to your trial                    | true  |
      | Assign | 10: Group cases by clicking the dropdown above | true  |
      | Assign | 9: Integrate FogBugz with your favorite tools  | true  |
      | Assign | 8: Set up your help desk                       | true  |
      | Assign | 7: Update the status of your cases             | true  |
      | Assign | 6: This is a case (click me for more detail)   | true  |
      | Assign | 5: Find your data through search and filters   | true  |
      | Assign | 4: Use Kanban to create a lightweight workflow | true  |
      | Assign | 3: Create your own Planner                     | true  |
      | Assign | 2: Create your first project(s)                | true  |
      | Assign | 1: Welcome to the Planner in FogBugz!          | true  |

  Scenario: User is notified when there are more unread notifications
    Given The user is logged in as Administrator
    And The following users exist:
      | Full name | Email         | Password |
      | lk        | lk@jungle.com | fb123    |
    And The user logs out
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email         | Password |
      | lk@jungle.com | fb123    |
    And The following cases exist:
      | ID | Title   | Assigned To   |
      | 18 | Case 18 | Administrator |
      | 19 | Case 19 | Administrator |
      | 20 | Case 20 | Administrator |
      | 21 | Case 21 | Administrator |
      | 22 | Case 22 | Administrator |
    And The user logs out
    And The user is logged in as Administrator
    And The following notifications exist:
      | Type   | Title                                          | Read  |
      | Assign | 22: Case 22                                    | false |
      | Assign | 21: Case 21                                    | false |
      | Assign | 20: Case 20                                    | false |
      | Assign | 19: Case 19                                    | false |
      | Assign | 18: Case 18                                    | false |
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
    When The user is redirected to the "Notifications" page
    Then The "Load more (1 unread)" link is shown in the "Notifications" page

  Scenario: Loading more notifications loads blocks of 20 notifications
    Given The user is logged in as Administrator
    And The following users exist:
      | Full name | Email         | Password |
      | lk        | lk@jungle.com | fb123    |
    And The user logs out
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email         | Password |
      | lk@jungle.com | fb123    |
    And The following cases exist:
      | ID | Title   | Assigned To   |
      | 18 | Case 18 | Administrator |
      | 19 | Case 19 | Administrator |
      | 20 | Case 20 | Administrator |
      | 21 | Case 21 | Administrator |
      | 22 | Case 22 | Administrator |
      | 23 | Case 23 | Administrator |
      | 24 | Case 24 | Administrator |
      | 25 | Case 25 | Administrator |
      | 26 | Case 26 | Administrator |
      | 27 | Case 27 | Administrator |
      | 28 | Case 28 | Administrator |
      | 29 | Case 29 | Administrator |
      | 30 | Case 30 | Administrator |
      | 31 | Case 31 | Administrator |
      | 32 | Case 32 | Administrator |
      | 33 | Case 33 | Administrator |
      | 34 | Case 34 | Administrator |
      | 35 | Case 35 | Administrator |
      | 36 | Case 36 | Administrator |
      | 37 | Case 37 | Administrator |
      | 38 | Case 38 | Administrator |
      | 39 | Case 39 | Administrator |
      | 40 | Case 40 | Administrator |
      | 41 | Case 41 | Administrator |
      | 42 | Case 42 | Administrator |
    And The user logs out
    And The user is logged in as Administrator
    And The user hovers over the "Notifications" icon in the sidebar
    And The user clicks the "See all" link in the sidebar menu
    And The user is redirected to the "Notifications" page
    And The following notifications are shown in the "Notifications" page in the following order:
      | Type   | Title       | Read  |
      | Assign | 42: Case 42 | false |
      | Assign | 41: Case 41 | false |
      | Assign | 40: Case 40 | false |
      | Assign | 39: Case 39 | false |
      | Assign | 38: Case 38 | false |
      | Assign | 37: Case 37 | false |
      | Assign | 36: Case 36 | false |
      | Assign | 35: Case 35 | false |
      | Assign | 34: Case 34 | false |
      | Assign | 33: Case 33 | false |
      | Assign | 32: Case 32 | false |
      | Assign | 31: Case 31 | false |
      | Assign | 30: Case 30 | false |
      | Assign | 29: Case 29 | false |
      | Assign | 28: Case 28 | false |
      | Assign | 27: Case 27 | false |
      | Assign | 26: Case 26 | false |
      | Assign | 25: Case 25 | false |
      | Assign | 24: Case 24 | false |
      | Assign | 23: Case 23 | false |
    When The user clicks the "Load more" link in the "Notifications" page
    Then The following notifications are shown in the "Notifications" page in the following order:
      | Type   | Title                                          | Read  |
      | Assign | 42: Case 42                                    | false |
      | Assign | 41: Case 41                                    | false |
      | Assign | 40: Case 40                                    | false |
      | Assign | 39: Case 39                                    | false |
      | Assign | 38: Case 38                                    | false |
      | Assign | 37: Case 37                                    | false |
      | Assign | 36: Case 36                                    | false |
      | Assign | 35: Case 35                                    | false |
      | Assign | 34: Case 34                                    | false |
      | Assign | 33: Case 33                                    | false |
      | Assign | 32: Case 32                                    | false |
      | Assign | 31: Case 31                                    | false |
      | Assign | 30: Case 30                                    | false |
      | Assign | 29: Case 29                                    | false |
      | Assign | 28: Case 28                                    | false |
      | Assign | 27: Case 27                                    | false |
      | Assign | 26: Case 26                                    | false |
      | Assign | 25: Case 25                                    | false |
      | Assign | 24: Case 24                                    | false |
      | Assign | 23: Case 23                                    | false |
      | Assign | 22: Case 22                                    | false |
      | Assign | 21: Case 21                                    | false |
      | Assign | 20: Case 20                                    | false |
      | Assign | 19: Case 19                                    | false |
      | Assign | 18: Case 18                                    | false |
      | Assign | 16: Intro Case for Administrator               | true  |
      | Assign | 15: Additional resources for Support Teams     | true  |
      | Assign | 14: Additional resources for Project Managers  | true  |
      | Assign | 13: Additional resources for Developers        | true  |
      | Assign | 12: Let us know if you have questions          | true  |
      | Assign | 11: Add users to your trial                    | true  |
      | Assign | 10: Group cases by clicking the dropdown above | true  |
      | Assign | 9: Integrate FogBugz with your favorite tools  | true  |
      | Assign | 8: Set up your help desk                       | true  |
      | Assign | 7: Update the status of your cases             | true  |
      | Assign | 6: This is a case (click me for more detail)   | true  |
      | Assign | 5: Find your data through search and filters   | true  |
      | Assign | 4: Use Kanban to create a lightweight workflow | true  |
      | Assign | 3: Create your own Planner                     | true  |
      | Assign | 2: Create your first project(s)                | true  |
