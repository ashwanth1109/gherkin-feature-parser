@NotAutomated
@JIRA-Key-MANUSCRIPT-31892
@Case
Feature: Case - Notify More Users

  Scenario: When creating a case user can be notified by email and notifications
    Given The user is logged in as Administrator
    And The following users exist:
      | Full name | Email         | Password |
      | lk        | lk@jungle.com | fb123    |
      | bk        | bk@jungle.com | fb123    |
      | u1        | u1@jungle.com | fb123    |
    And The user clicks the "New Case" button in the sidebar
    And The user enters the case details in the "New Case" page:
      | Title   | Notify More Users | Assigned To |
      | Capital | lk, bk, u1        | Unassigned  |
    When The user clicks the "Open" button
    And The user logs out
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email         | Password |
      | lk@jungle.com | fb123    |
    And The user clicks the "Login" button
    Then The user hovers over the "Notifications" icon in the sidebar
    And The following notifications are shown in the sidebar menu:
      | Type   | Title       | Read  |
      | Notify | 17: Capital | false |
    And The user logs out
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email         | Password |
      | bk@jungle.com | fb123    |
    And The user clicks the "Login" button
    And The user hovers over the "Notifications" icon in the sidebar
    And The following notifications are shown in the sidebar menu:
      | Type   | Title       | Read  |
      | Notify | 17: Capital | false |
    And The user logs out
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email         | Password |
      | u1@jungle.com | fb123    |
    And The user clicks the "Login" button
    And The user hovers over the "Notifications" icon in the sidebar
    And The following notifications are shown in the sidebar menu:
      | Type   | Title       | Read  |
      | Notify | 17: Capital | false |
