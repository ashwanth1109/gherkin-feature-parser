@NotAutomated
@JIRA-Key-MANUSCRIPT-31895
@Notification
Feature: Notification - On Creating New Public Case

  Scenario: When creating a public case user can be notified by email and notifications
    Given The user is logged in as Administrator
    And The following permissions exist:
      | Project | Type           | Name                | Submit Cases |
      | Ninja   | Community User | All Community Users | true         |
    And The following subscriptions exist:
      | Can Delete | Subscription               |
      | true       | Subscribed to ALL PROJECTS |
    And The user logs out
    And The user clicks the "New Case" button in the sidebar
    And The user enters the case details in the "New Public Case" page:
      | Title    |
      | Arachnid |
    And The user clicks the "OK" button in the "New Public Case" page:
    And The user is logged in as Administrator
    And The user hovers over the "Notifications" icon in the sidebar
    And The user clicks the "See all" link in the sidebar menu
    When The user is redirected to the "Notifications" page
    Then The following notifications are shown in the "Notifications" page in the following order:
      | Type   | Title       | Description                          | Item   | Date     | Read  |
      | Assign | 17: Capital | Administrator assigned to Unassigned | Assign | Just now | false |
    And The user receives the "FogBugz (Case 17) Onboarding Project - Arachnid" email message in the "administrator@fogbugz.com" email address
    And The following details are shown in the "FogBugz (Case 17) Onboarding Project - Arachnid" email message body:
      | Title                                                       | Type                                      | Priority     | Assigned To   | Status | Milestone |
      | A public user opened Case 17: Arachnid and assigned to you: | Inquiry in Onboarding Project: Guidelines | 3 - Must Fix | Administrator | Active | Undecided |
    And The "Go to Case" button is shown in the "FogBugz (Case 17) Onboarding Project - Arachnid" email message body
    And The "Update your preferences" link is shown in the "FogBugz (Case 17) Onboarding Project - Arachnid" email message body
