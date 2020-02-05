@NotAutomated
@JIRA-Key-MANUSCRIPT-31030
@Planner
Feature: Planner - Permissions - Projects are not visible without permissions

  Scenario: User cannot see projects and cases in the projects that they don't have permissions to
    Given The user is logged in as Administrator
    And The following users exist:
      | Full name | Email         | Account Type | Status | Password |
      | Lion King | lk@jungle.com | Normal       | Active | lking    |
    And The following projects exist:
      | Project Name | Primary Contact |
      | Ninja        | Administrator   |
      | Hidden       | Administrator   |
    And The following permissions exist:
      | Project | Type              | Name             | Read  | Modify | Admin |
      | Ninja   | Normal User Group | All Normal Users | false | true   | false |
    And The following milestones exist:
      | Project | All Projects | This Project | Milestone Name | Completion Date | Backlog | Start Date | Start Date Note |
      | Ninja   | false        | true         | Hurricane      | 5/16/2022       | false   | 5/15/2022  | It starts soon  |
    And The following planners exist:
      | Planner    | Milestones           | Projects      |
      | My planner | Hurricane, Undecided | Hidden, Ninja |
    And The following cases exist:
      | ID | Title | Status   | Project | Milestone |
      | 20 | D     | Resolved | Hidden  | Undecided |
      | 21 | E     | Active   | Hidden  | Undecided |
      | 22 | F     | Closed   | Hidden  | Undecided |
      | 23 | G     | Closed   | Ninja   | Undecided |
    And The user logs out
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email         | Password |
      | lk@jungle.com | lking    |
    And The user clicks the "My planner" menu item in the sidebar menu
    And The "Planner" page is shown
    Then The following details are shown in the "Planner" page:
      | Milestones |
      | Undecided  |
    And The following cases are shown in the "Undecided" milestone in the "Planner" page:
      | ID | Title |
      | 23 | G     |
