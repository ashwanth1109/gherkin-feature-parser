@NotAutomated
@JIRA-Key-MANUSCRIPT-31438
@Planner
Feature: Planner - Filter - View All Filters

  Scenario: User can select over existing filters for filter columns in planner
    Given The user is logged in as Administrator
    And The following planners exist:
      | Planner    | Filter Columns |
      | My planner | Inbox          |
    And The following filters exist:
      | Title     |
      | Inbox     |
      | MyFilter1 |
    And The user clicks the "Onboarding Planner" menu item in the sidebar menu
    And The "My planner" page is shown
    When The user clicks the "Filters" dropdown in the "Filters" column in the "Planner" page
    Then The following options are shown in the "Filters" dropdown:
      | Inbox     |
      | MyFilter1 |



