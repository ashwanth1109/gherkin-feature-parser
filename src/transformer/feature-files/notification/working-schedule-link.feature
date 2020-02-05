@NotAutomated
@JIRA-Key-MANUSCRIPT-31874
@Notification
Feature: Notification - Working Schedule link

  Scenario: The user's working schedule is linked on their notifications page
    Given The user is logged in as Administrator
    And The user hovers over the "Notifications" icon in the sidebar
    And The user clicks the "See all" link in the sidebar menu
    When The user is redirected to the "Notifications" page
    And The user clicks the "Working Schedule" link in the "Notifications" page
    Then The user is redirected to the "Person Info" page
