@NotAutomated
@JIRA-Key-MANUSCRIPT-31882
@Notification
Feature: Notification - Type - Assign

  Scenario: Assign notification is shown when user is assigned to a case
    Given The user is logged in as Administrator
    And The following users exist:
      | Full name | Email         | Password |
      | lk        | lk@jungle.com | fb123    |
    And The user logs out
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email         | Password |
      | lk@jungle.com | fb123    |
    And The user clicks the "Login" button
    And The user clicks the "New Email" button in the sidebar
    And The user enters the following details in the "New Email" page:
      | To                 | Assigned To   | Subject |
      | nobody@nowhere.com | Administrator | Capital |
    And The user clicks the "Send" button in the "New Email" page
    And The user logs out
    And The user is logged in as Administrator
    And The user hovers over the "Notifications" icon in the sidebar
    And The user clicks the "See all" link in the sidebar menu
    When The user is redirected to the "Notifications" page
    Then The following notifications are shown in the "Notifications" page in the following order:
      | Type   | Title       | Description        | Item   | Date     | Read  |
      | Assign | 17: Capital | lk assigned to you | Assign | Just now | false |
