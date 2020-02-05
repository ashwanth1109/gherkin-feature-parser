@NotAutomated
@JIRA-Key-MANUSCRIPT-31875
@Notification
Feature: Notification - Notification Template - Case - Id and Title

  Scenario: For case related notifications case id and title is shown on the notifications page
    Given The user is logged in as Administrator
    And The user hovers over the "Notifications" icon in the sidebar
    And The user clicks the "See all" link in the sidebar menu
    When The user is redirected to the "Notifications" page
    Then The following notifications are shown in the "Notifications" page in the following order:
      | Title                                          |
      | 16: Intro Case for Administrator               |
      | 15: Additional resources for Support Teams     |
      | 14: Additional resources for Project Managers  |
      | 13: Additional resources for Developers        |
      | 12: Let us know if you have questions          |
      | 11: Add users to your trial                    |
      | 10: Group cases by clicking the dropdown above |
      | 9: Integrate FogBugz with your favorite tools  |
      | 8: Set up your help desk                       |
      | 7: Update the status of your cases             |
      | 6: This is a case (click me for more detail)   |
      | 5: Find your data through search and filters   |
      | 4: Use Kanban to create a lightweight workflow |
      | 3: Create your own Planner                     |
      | 2: Create your first project(s)                |
      | 1: Welcome to the Planner in FogBugz!          |
