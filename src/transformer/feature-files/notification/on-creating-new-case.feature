@NotAutomated
@JIRA-Key-MANUSCRIPT-31894
@Notification
Feature: Notification - On Creating New Case

  Scenario: When creating a case user can be notified by email and notifications
    Given The user is logged in as Administrator
    And The following users exist:
      | Full name | Email         | Password |
      | lk        | lk@jungle.com | fb123    |
    And The user logs out
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email         | Password |
      | lk@jungle.com | fb123    |
    And The user clicks the "Login" button
    And The user clicks the "New Case" button in the sidebar
    And The user enters the case details in the "New Case" page:
      | Title   | Notify More Users | Assigned To |
      | Capital | Administrator     | Unassigned  |
    And The user clicks the "Open" button
    And The user logs out
    And The user is logged in as Administrator
    And The user hovers over the "Notifications" icon in the sidebar
    And The user clicks the "See all" link in the sidebar menu
    When The user is redirected to the "Notifications" page
    Then The following notifications are shown in the "Notifications" page in the following order:
      | Type   | Title       | Description                                | Item   | Date     | Read  |
      | Assign | 17: Capital | lk notified you and assigned to Unassigned | Assign | Just now | false |
    And The user receives the "FogBugz (Case 17) Onboarding Project - Capital" email message in the "administrator@fogbugz.com" email address
    And The following details are shown in the "FogBugz (Case 17) Onboarding Project - Capital" email message body:
      | Title                               | Type                                  | Priority     | Assigned To | Status | Milestone |
      | lk notified you on Case 17: Capital | Bug in Onboarding Project: Guidelines | 3 - Must Fix | Unassigned  | Active | Undecided |
    And The "Go to Case" button is shown in the "FogBugz (Case 17) Onboarding Project - Capital" email message body
    And The "Update your preferences" link is shown in the "FogBugz (Case 17) Onboarding Project - Capital" email message body
