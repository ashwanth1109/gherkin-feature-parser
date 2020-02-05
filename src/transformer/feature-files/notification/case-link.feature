@NotAutomated
@JIRA-Key-MANUSCRIPT-31884
@Notification
Feature: Notification - Case link

  Scenario: User can navigate to the case details from the notifications page
    Given The user is logged in as Administrator
    And The user hovers over the "Notifications" icon in the sidebar
    And The user clicks the "See all" link in the sidebar menu
    And The user is redirected to the "Notifications" page
    When The user clicks the "16: Intro Case for Administrator" notification in the "Notifications" page
    Then The user is redirected to the "View Active Case" page
    And The following case details are shown in the "View Active Case" page:
      | ID | Title                        |
      | 16 | Intro Case for Administrator |
