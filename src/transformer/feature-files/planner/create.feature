@NotAutomated
@JIRA-Key-MANUSCRIPT-30561
@Planner
Feature: Planner - Create

  Scenario: User can create new planners
    Given The user is logged in as Administrator
    When The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "..." menu item in the sidebar menu
    And The user clicks the "Create Planner" link in the sidebar menu
    Then The "Create Planner" dialog is shown
    And The user enters the following details in the "Create Planner" dialog:
      | Name       | Projects           |
      | My planner | Onboarding project |
    And The "Planner" page is shown
    And The following details are shown in the "Planner" page:
      | Planner    |
      | My planner |

  Scenario: User can create new planner through dropdown in the Planners page
    Given The user is logged in as Administrator
    When The user hovers over the "Planner" menu item in the sidebar
    And The user clicks the "Onboarding Planner" menu item in the sidebar menu
    And The "Planner" page is shown
    And The user clicks the "Planner" dropdown in the "Planner" page
    And The user clicks the "Create Planner" link in the "Planner" dropdown in the "Planner" page
    Then The "Create Planner" dialog is shown
    And The user enters the following details in the "Create Planner" dialog:
      | Name       | Projects           |
      | My planner | Onboarding project |
    And The "Planner" page is shown
    And The following details are shown in the "Planner" page:
      | Planner    |
      | My planner |
