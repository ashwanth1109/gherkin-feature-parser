@NotAutomated
@JIRA-Key-MANUSCRIPT-31883
@Notification
Feature: Notification - Case tooltip

  Scenario: User can see case tooltip for the notifications in the notifications page
    Given The user is logged in as Administrator
    And The user hovers over the "Notifications" icon in the sidebar
    And The user clicks the "See all" link in the sidebar menu
    And The user is redirected to the "Notifications" page
    When The user hovers over the "16: Intro Case for Administrator" notification in the "Notifications" page
    Then The "Case Tooltip" is shown
