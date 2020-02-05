@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30346
@Subscription
Feature: Subscription - Create - All Projects - Case

  Scenario: Administrator user is auto subscribed to any case they create when they have auto subscribed to subscription "Subscribed to ALL PROJECTS"
    Given The user is logged in as Administrator
    And The following site configuration details exist:
        | Show Subscribers                                                      |
        | The case page will show users who have subscribed to the current case |
    And The following subscriptions exist:
        | Can Delete | Subscription               |
        | true       | Subscribed to ALL PROJECTS |
    And The user clicks the "New Case" button in the sidebar
    And The user is redirected to the "New Case" page
    And The user enters the case details in the "New Case" page:
        | Title   |
        | Welcome |
    When The user clicks the "Open" button in the "New Case" page
    Then The "View Active Case" page is shown
    And The following case details are shown in the "View Active Case" page:
        | ID | Title   | Status | Subscribers   |
        | 17 | Welcome | Active | Administrator |
