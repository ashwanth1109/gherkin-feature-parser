@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30348
@Subscription
Feature: Subscription - Create - Project Area - Case

  Scenario: Administrator user is auto subscribed to any case they create in a project area when they have auto subscribed to that project area
    Given The user is logged in as Administrator
    And The following site configuration details exist:
        | Show Subscribers                                                      |
        | The case page will show users who have subscribed to the current case |
    And The following subscriptions exist:
        | Can Delete | Subscription                 |
        | true       | Project: Inbox .... Not Spam |
    And The user clicks the "New Case" button in the sidebar
    And The "New Case" page is shown
    And The user enters the case details in the "New Case" page:
        | Title   | Project | Area     |
        | Welcome | Inbox   | Not Spam |
    When The user clicks the "Open" button in the "New Case" page
    Then The "View Active Case" page is shown
    And The following case details are shown in the "View Active Case" page:
        | Title   | Status | Subscribers   | Project | Area     | Opened by     |
        | Welcome | Active | Administrator | Inbox   | Not Spam | Administrator |
