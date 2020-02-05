@PartiallyAutomated
@JIRA-Key-MANUSCRIPT-30033
@Subscription
Feature: Subscription - Delete - All Wiki

  Scenario: Administrator can auto unsubscribe from all wikis
    Given The user is logged in as Administrator
    And The following subscriptions exist:
        | Can Delete | Subscription            |
        | true       | Subscribed to ALL WIKIS |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Subscribe" menu item in the sidebar menu
    And The "Create an auto subscription" page is shown
    When The user clicks the "Delete" button for the "Subscribed to ALL WIKIS" subscription in the "Create an auto subscription" page
    And The "Delete Subscription" confirmation dialog is opened
    And The user clicks the "OK" button in the "Delete Subscription" confirmation dialog
    Then The "Delete Subscription" confirmation dialog is closed
    And The following subscriptions are listed in the "Create an auto subscription" page in the following order:
        | Subscription |
        |              |
