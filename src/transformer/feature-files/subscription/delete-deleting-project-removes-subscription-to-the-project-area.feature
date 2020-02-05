@NotAutomated
@JIRA-Key-MANUSCRIPT-31855
@Subscription
Feature: Subscription - Delete - Deleting project removes subscription to the project area

  Scenario: Administrator is auto unsubscribed to a project area when the project is deleted
    Given The user is logged in as Administrator
    And The following projects exist:
      | Project Name |
      | Test Inbox   |
    And The following project areas exist:
      | Project    | Can Delete | Area     | Primary Contact |
      | Test Inbox | true       | Not Spam | Administrator   |
    And The following subscriptions exist:
      | Can Delete | Subscription                                |
      | true       | Subscribed to area "Test Project: Not Spam" |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Project" menu item in the sidebar menu
    And The "Manage Projects" page is shown
    When The user clicks the "Delete" button for the "Test Inbox" project in the "Manage Projects" page
    And The "Delete Project" dialog is opened
    And The following dialog details are shown in the "Delete Project" dialog:
      | Message                                         |
      | Do you want to delete the 'Test Inbox' project? |
    And The user clicks the "Yes" button in the "Delete Project" dialog
    And The "Delete Project" dialog is closed
    And The user is redirected to the "Manage Project" page
    And The following projects are listed in the "Projects" table in the "Manage Projects" page in the following order:
      | Can Edit | Can Delete | Project Name       | Primary Contact |
      | true     | false      | Inbox              | Administrator   |
      | true     | true       | Onboarding Project | Administrator   |
    Then The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Subscribe" menu item in the sidebar menu
    And The "Manage auto Subscriptions" page is shown
    And The following subscriptions are listed in the "Manage auto Subscriptions" page in the following order:
      | Can Delete | Subscription |
      |            |              |
