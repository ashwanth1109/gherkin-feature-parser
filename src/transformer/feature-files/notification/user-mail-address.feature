@NotAutomated
@JIRA-Key-MANUSCRIPT-31872
@Notification
Feature: Notification - User mail address

  Scenario: The user's email address is shown on their notifications page
    Given The user is logged in as Administrator
    And The user hovers over the "Notifications" icon in the sidebar
    And The user clicks the "See all" link in the sidebar menu
    When The user is redirected to the "Notifications" page
    Then The "administrator@fogbugz.com" email link is shown in the "Notifications" page
