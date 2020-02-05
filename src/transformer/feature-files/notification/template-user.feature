@NotAutomated
@JIRA-Key-MANUSCRIPT-31878
@Notification
Feature: Notification - Notification Template - User

  Scenario: For each type of notifications the user caused the even is shown per each notification in the notifications page
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
    And The user clicks the "New Case" button in the sidebar
    And The user enters the following details in the "New Case" page:
      | Title | Notify More Users |
      | C17   | Administrator     |
    And The user clicks the "Open" button in the "New Case" page
    And The user clicks the "New Case" button in the sidebar
    And The user enters the following details in the "New Case" page:
      | Title | Assigned To   |
      | C18   | Administrator |
    And The user clicks the "Open" button in the "New Case" page
    And The user logs out
    And The user is logged in as Administrator
    And The user hovers over the "Notifications" icon in the sidebar
    And The user clicks the "See all" link in the sidebar menu
    When The user is redirected to the "Notifications" page
    Then The following notifications are shown in the "Notifications" page in the following order:
      | Type      | Title            | User |
      | Assign    | 18: C18          | lk   |
      | Notify    | 17: C17          | lk   |
      | Subscribe | W1: Root Article | lk   |
