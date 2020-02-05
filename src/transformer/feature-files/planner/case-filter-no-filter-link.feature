@NotAutomated
@JIRA-Key-MANUSCRIPT-31060
@Planner
Feature: Planner - Case - Filter - No Filter link

  Scenario Outline: User can collapse groups in milestones in planners
    Given The user is logged in as Administrator
    And The user clicks the "Onboarding Planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Add Filter Column" button in the "Planner" page
    And The following filter columns exist in the "Planner" page:
      | Filter Column |
      | Inbox         |
    When The user enters the following details for the "Inbox" filter column in the "Planner" page:
      | Group By   |
      | <Group By> |
    Then The "<Group Name>" group title is not for the "<Group Name>" group in the "Inbox" filter column in the "Planner" page
    Examples:
      | Group By      | Group Name    |
      | None          | Cases         |
      | Kanban Column | Doing         |
      | Project       | Ninja         |
      | Priority      | 1 - Must Fix  |
      | Status        | Active        |
      | Assigned To   | Administrator |
