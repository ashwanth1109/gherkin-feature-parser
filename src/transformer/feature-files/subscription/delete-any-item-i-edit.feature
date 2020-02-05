@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30293
@Subscription
Feature: Subscription - Delete - Any item I edit

  Scenario: Administrator can auto unsubscribe from any item they edit
    Given The user is logged in as Administrator
    And The following subscriptions exist:
        | Can Delete | Subscription                  |
        | true       | Subscribed to ANY ITEM I EDIT |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Subscribe" menu item in the sidebar menu
    And The "Create an auto subscription" page is shown
    When The user clicks the "Delete" button for the "Subscribed to ANY ITEM I EDIT" subscription in the "Create an auto subscription" page
    And The "Delete Subscription" confirmation dialog is opened
    And The user clicks the "OK" button in the "Delete Subscription" confirmation dialog
    Then The "Create an auto subscription" page is shown
    And The following subscriptions are listed in the "Create an auto subscription" page in the following order:
        | Subscription |
        |              |
