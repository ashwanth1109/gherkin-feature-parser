@NotAutomated
@JIRA-Key-MANUSCRIPT-31897
@Notification
Feature: Notification - Wiki Article Revision Difference link

  Scenario: User can navigate to wiki article revision difference page from notifications in the "Notifications" page
    Given The user is logged in as Administrator
    And The following subscriptions exist:
      | Can Delete | Subscription            |
      | true       | Subscribed to ALL WIKIS |
    And The following wikis exist:
      | Wiki   |
      | Wiki-A |
    And The following users exist:
      | Full name | Email         | Password |
      | lk        | lk@jungle.com | fb123    |
    And The following notifications exist:
      | Type      | Title            | Read  |
      | Subscribe | W1: Root Article | false |
    And The user hovers over the "Notifications" icon in the sidebar
    And The user clicks the "See all" link in the sidebar menu
    And The user is redirected to the "Notifications" page
    When The user clicks the "W1: Root Article" notification in the "Notifications" page
    Then The user is redirected to the "Wiki Article Difference Page" page
