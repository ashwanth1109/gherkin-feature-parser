@NotAutomated
@JIRA-Key-MANUSCRIPT-31437
@Planner
Feature: Planner - Filter - Create

  Scenario: User can create a filter column for a planner
    Given The user is logged in as Administrator
    And The user clicks the "Onboarding Planner" menu item in the sidebar menu
    And The "Planner" page is shown
    When The user clicks the "Add Filter Column" button in the "Planner" page
    Then The following filter columns exist in the "Planner" page:
      | Filter Column |
      | Inbox         |
