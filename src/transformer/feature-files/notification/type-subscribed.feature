@NotAutomated
@JIRA-Key-MANUSCRIPT-31880
@Notification
Feature: Notification - Type - Subscribed

  Scenario: Subscription notification is shown for wiki article changes
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
    And The user logs out
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email         | Password |
      | lk@jungle.com | fb123    |
    And The user clicks the "Login" button
    And The user hovers over the "Wiki" menu item in the sidebar menu
    And The user clicks the "Wiki-A" wiki link in the sidebar menu
    And The user clicks the "Edit" button in the "View Wiki Article" page
    And The user enters the following details in the "Edit Wiki Article" page:
      | Content |
      | 123     |
    And The user clicks the "Save" button in the "Edit Wiki Article" page
    And The user clicks the "Save and View" button in the "Save" dialog
    And The user logs out
    And The user is logged in as Administrator
    And The user hovers over the "Notifications" icon in the sidebar
    And The user clicks the "See all" link in the sidebar menu
    When The user is redirected to the "Notifications" page
    Then The following notifications are shown in the "Notifications" page in the following order:
      | Type      | Title            | Description | Item | Date     | Read  |
      | Subscribe | W1: Root Article | lk revised  | Edit | Just now | false |
