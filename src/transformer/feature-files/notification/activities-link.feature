@NotAutomated
@JIRA-Key-MANUSCRIPT-31893
@Notification
Feature: Notification - Activities link

  Scenario: User can navigate from the Notifications page to the Activities
    Given The user is logged in as Administrator
    And The user hovers over the "Notifications" icon in the sidebar
    And The user clicks the "See all" link in the sidebar menu
    And The user is redirected to the "Notifications" page
    When The user clicks the "Activities" link in the "Notifications" page
    Then The user is redirected to the "Activities" page
