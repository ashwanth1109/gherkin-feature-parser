@NotAutomated
@JIRA-Key-MANUSCRIPT-31873
@Notification
Feature: Notification - Assigned Cases link

  Scenario: The user's assigned cases is linked on their notifications page
    Given The user is logged in as Administrator
    And The user hovers over the "Notifications" icon in the sidebar
    And The user clicks the "See all" link in the sidebar menu
    When The user is redirected to the "Notifications" page
    And The user clicks the "Assigned Cases" link in the "Notifications" page
    Then The user is redirected to the "Filters" page
    And The following filter is shown:
      | First 200 open cases assigned to Administrator sorted by Project sorted by Milestone sorted by Priority |
